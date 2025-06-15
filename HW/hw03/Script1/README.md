# auto\_backup.sh

## Description

`auto_backup.sh` is a Bash script designed to automate the process of backing up a specified source directory to a destination folder in `.tar.gz` format. The script offers enhanced functionality including:

* Automatic rotation of old backups based on user-defined limits.
* Optional email notifications on successful backups.
* Support for excluding specific files or directories from the backup.

---

## Usage

```bash
./auto_backup.sh <source_directory> <backup_destination> <max_backups> [--email] [exclude_pattern1] [exclude_pattern2] ...
```

### Parameters

| Parameter              | Required   | Description                                                                 |
| ---------------------- | ---------- | --------------------------------------------------------------------------- |
| `<source_directory>`   | ✅ Yes      | The full path of the folder you want to back up.                            |
| `<backup_destination>` | ✅ Yes      | The destination directory where backup `.tar.gz` files will be stored.      |
| `<max_backups>`        | ✅ Yes      | The maximum number of recent backup files to retain.                        |
| `--email`              | ❌ Optional | Send an email notification upon successful backup. Requires `mail` utility. |
| `[exclude_patterns]`   | ❌ Optional | List of patterns to exclude, e.g. `*.log`, `node_modules`.                  |

---

## Example Usage

### Basic Backup (no email, no exclusions)

```bash
./auto_backup.sh /home/user/projects /mnt/backup 5
```

### Backup with Email Notification

```bash
./auto_backup.sh /var/www /backup/webdata 3 --email
```

### Backup with Exclusions

```bash
./auto_backup.sh /home/user/code /mnt/backup 5 "*.log" "node_modules"
```

### Full Usage with Email and Excludes

```bash
./auto_backup.sh /data /backup 7 --email "*.tmp" "*.cache"
```

---

## Output

* A file like `backup_20250611-200000.tar.gz` will be created in the destination directory.
* Log output is written to `/home/<youruser>/backup.log`.
* Old backups beyond the max limit are deleted automatically.

---

## Email Configuration

To enable email notifications:

1. Install `mailx` or `mail`:

   ```bash
   sudo apt install mailutils    # Ubuntu/Debian
   sudo yum install mailx        # RHEL/CentOS
   ```

2. Update the script:

   ```bash
   EMAIL="you@example.com"
   ```

---

## Assumptions

* You are running on a Linux environment with Bash.
* You have permission to access source and destination directories.
* You’ve installed `mail` if using the `--email` option.
* You avoid filenames with strange characters that could break `tar`.

---

## Author

CS11117 Homework
**Nguyen Ho Dang Duy - 22127085**

