#!/bin/bash
LOG_FILE="$1"
LINES="${2:-1000}"
shift 2

THRESHOLD=10
REPORT_FILE="log_alert_report.txt"
EMAIL_ENABLED=false
EMAIL="nhdduy22@clc.fitus.edu.vn"
KEYWORDS=("ERROR" "WARNING")

# Parse optional flags
while [[ "$1" != "" ]]; do
  case "$1" in
    --email)
      EMAIL_ENABLED=true
      ;;
    --keywords)
      shift
      KEYWORDS=()
      while [[ "$1" != "" && "$1" != --* ]]; do
        KEYWORDS+=("$1")
        shift
      done
      continue
      ;;
  esac
  shift
done

# Validate input file
if [ -z "$LOG_FILE" ] || [ ! -r "$LOG_FILE" ]; then
  echo "[-] Log file not found or unreadable: $LOG_FILE"
  exit 1
fi

# Read last N lines
LAST_LINES=$(tail -n "$LINES" "$LOG_FILE")

# Initialize report values
TOTAL_COUNT=0
MATCHED_LINES=""
declare -A COUNTS

for word in "${KEYWORDS[@]}"; do
  COUNT=$(echo "$LAST_LINES" | grep -c "$word")
  COUNTS["$word"]=$COUNT
  TOTAL_COUNT=$((TOTAL_COUNT + COUNT))
  MATCHED_LINES+=$(echo "$LAST_LINES" | grep "$word")
  MATCHED_LINES+=$'\n'
done

# Get last timestamp for any matching keyword
# Create regex pattern: "ERROR|WARNING"
REGEX_PATTERN=$(IFS="|"; echo "${KEYWORDS[*]}")

# Get all matched lines for final timestamp
MATCHED_LINES=$(echo "$LAST_LINES" | grep -E "$REGEX_PATTERN")

# Extract most recent timestamp
LAST_TIMESTAMP=$(echo "$MATCHED_LINES" | tail -n 1 | awk '{print $1, $2}')

# Generate Report
{
  echo "Log Monitoring Report"
  echo "======================"
  echo "File: $LOG_FILE"
  echo "Lines Scanned: $LINES"
  echo "Keywords Monitored: ${KEYWORDS[*]}"
  echo

  for word in "${KEYWORDS[@]}"; do
    echo "Number of ${word}s found: ${COUNTS[$word]}"
  done

  echo
  echo "Most Recent ERROR/WARNING Timestamp: ${LAST_TIMESTAMP:-N/A}"
  echo

  if [ "$TOTAL_COUNT" -gt "$THRESHOLD" ]; then
    echo "CRITICAL: $TOTAL_COUNT total matches detected (Threshold = $THRESHOLD)"
  else
    echo "Status: System appears stable."
  fi
} > "$REPORT_FILE"

# Email Alert
if [ "$TOTAL_COUNT" -gt "$THRESHOLD" ] && [ "$EMAIL_ENABLED" = true ]; then
  cat "$REPORT_FILE" | mail -s "[-] Log Alert: $TOTAL_COUNT matches in $LOG_FILE" "$EMAIL"
fi

echo "[+] Summary written to $REPORT_FILE"
