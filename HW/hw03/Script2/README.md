# log\_monitor.sh

## Description

`log_monitor.sh` is a shell script that monitors log files for specified keywords (e.g., ERROR, WARNING) and generates a summary report. It can also send email alerts if critical thresholds are exceeded.

The script supports:

* Scanning the last N lines of a log file.
* Counting occurrences of keywords.
* Customizable keyword list (not just ERROR/WARNING).
* Optional email notification if the total keyword matches exceed a threshold.

---

## Usage

```bash
./log_monitor.sh <log_file> [lines_to_check] [--email] [--keywords KEY1 KEY2 ...]
```

### Parameters

| Parameter          | Required   | Description                                                        |
| ------------------ | ---------- | ------------------------------------------------------------------ |
| `<log_file>`       | ✅ Yes      | Path to the log file to analyze.                                   |
| `[lines_to_check]` | ❌ Optional | Number of lines from the end of the log to scan (default is 1000). |
| `--email`          | ❌ Optional | Send an email notification if total matches exceed threshold.      |
| `--keywords`       | ❌ Optional | Specify keywords to monitor (default: ERROR WARNING).              |

---

## Example Usage

### 1. Basic Usage (Default: ERROR, WARNING, 1000 lines)

```bash
./log_monitor.sh /var/log/app.log
```

### 2. Specify line count

```bash
./log_monitor.sh /var/log/app.log 2000
```

### 3. Enable email alerts

```bash
./log_monitor.sh /var/log/app.log 1000 --email
```

### 4. Custom keywords only

```bash
./log_monitor.sh /var/log/app.log 1000 --keywords FAIL CRITICAL
```

### 5. Custom keywords + email alert

```bash
./log_monitor.sh /var/log/app.log 1000 --email --keywords ERROR CRITICAL
```

---

## Output

* A file named `log_alert_report.txt` will be created in the current directory.
* Contains keyword match counts and last occurrence timestamp.
* Email (if enabled) will send this report to the configured address.

---

## Email Setup

To use email alerting:

1. Install a mail client:

   ```bash
   sudo apt install mailutils      # Debian/Ubuntu
   sudo yum install mailx          # RHEL/CentOS
   ```

2. Set your email in the script:

   ```bash
   EMAIL="you@example.com"
   ```

---

## Assumptions and Limitations

* Script runs in a Linux environment with Bash.
* Log file must be readable by the user running the script.
* No support for regex-based keyword matching.
* Email is sent only if `--email` is used AND threshold is exceeded.

---

## Author

CS11117 Homework
**Nguyen Ho Dang Duy - 22127085**

