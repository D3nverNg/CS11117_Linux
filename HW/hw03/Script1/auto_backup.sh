#!/bin/bash
SRC="$1"
DEST="$2"
MAX_BACKUPS="$3"
shift 3

EMAIL_ENABLED=false
EMAIL="nhdduy22@clc.fitus.edu.vn"
EXCLUDES=()

# Parse remaining args
for arg in "$@"; do
  if [[ "$arg" == "--email" ]]; then
    EMAIL_ENABLED=true
  else
    EXCLUDES+=("$arg")
  fi
done

LOG_FILE="/home/denver/backup.log"
TIMESTAMP=$(date +"%Y%m%d-%H%M%S")
BACKUP_FILE="$DEST/backup_$TIMESTAMP.tar.gz"

log_msg() {
  echo "$(date +"%Y-%m-%d %H:%M:%S") $1" >> "$LOG_FILE"
}

send_email() {
  local subject="$1"
  local body="$2"
  if [ "$EMAIL_ENABLED" = true ]; then
    echo "$body" | mail -s "$subject" "$EMAIL"
  fi
}

# Validate source directory
if [ ! -d "$SRC" ]; then
  log_msg "ERROR Source directory '$SRC' does not exist."
  echo "Backup failed: source not found."
  exit 1
fi

# Validate destination
if [ ! -w "$DEST" ]; then
  log_msg "ERROR Destination directory '$DEST' not writable."
  echo "Backup failed: destination not writable."
  exit 1
fi

log_msg "INFO Starting backup from $SRC to $BACKUP_FILE"

# Build tar command
TAR_CMD="tar -czf \"$BACKUP_FILE\""
for pattern in "${EXCLUDES[@]}"; do
  TAR_CMD+=" --exclude=\"$pattern\""
done
TAR_CMD+=" \"$SRC\""

eval $TAR_CMD 2>>"$LOG_FILE"
if [ $? -ne 0 ]; then
  log_msg "ERROR Failed to create archive."
  echo "Backup failed."
  exit 1
fi

log_msg "INFO Backup created successfully: $BACKUP_FILE"

# Clean old backups
BACKUP_COUNT=$(ls -1t "$DEST"/backup_*.tar.gz 2>/dev/null | wc -l)
if [ "$BACKUP_COUNT" -gt "$MAX_BACKUPS" ]; then
  ls -1t "$DEST"/backup_*.tar.gz | tail -n +$(($MAX_BACKUPS + 1)) | xargs rm -f
  log_msg "INFO Cleaned old backups, kept last $MAX_BACKUPS."
fi

log_msg "INFO Backup process completed."

# Only send email if --email was passed
send_email "Backup SUCCESS" "Backup was completed at $TIMESTAMP. File: $BACKUP_FILE"

echo "[+] Backup successful."
