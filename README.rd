# Server Performance Stats Script

A lightweight and portable **Bash script** to analyze and monitor basic server performance metrics on any Linux system.

This project is designed for **DevOps engineers, system administrators, and developers** who need quick insights into server health without installing heavy monitoring tools.

---

##  Features

### Core Metrics
*  Total CPU usage
*  Memory usage (Used vs Free with percentage)
*  Disk usage (Used vs Free with percentage)
*  Top 5 processes by CPU usage
*  Top 5 processes by Memory usage

###  Additional Metrics (Stretch Goals)

*  OS version
*  System uptime
*  Load average
*  Logged-in users
*  Failed login attempts (SSH)

---

##  Requirements

This script works on most Linux distributions such as:

* Ubuntu / Debian
* CentOS / RHEL
* Kali Linux
* Arch Linux

###  Required Tools (Pre-installed in most systems)

* `bash`
* `top`
* `free`
* `df`
* `ps`
* `awk`
* `grep`

---

## Installation & Setup

### Clone the Repository

```bash
git clone https://github.com/your-username/server-stats.git
```

---

### Navigate to Project Directory

```bash
cd server-stats
```

---

### Give Execute Permission

```bash
chmod +x server-stats.sh
```

---

##  How to Run the Script

Execute the script using:

```bash
./server-stats.sh
```

---

##  Example Output

```
=========================================
       SERVER PERFORMANCE STATS
=========================================

CPU Usage:
Used: 18.4%

Memory Usage:
Used: 2100MB (52.5%)
Free: 1900MB (47.5%)

Disk Usage:
Used: 25G (50%)
Free: 25G

Top 5 Processes by CPU Usage:
PID   COMMAND   %CPU
1234  chrome    35.0
5678  node      20.5

Top 5 Processes by Memory Usage:
PID   COMMAND   %MEM
1234  chrome    15.2
5678  node      10.1

Additional Stats:
OS: Ubuntu 22.04 LTS
Uptime: up 2 hours
Load Average: 0.45, 0.60, 0.75
Logged in users: 2
Failed login attempts: 5

=========================================
```

---

## How It Works

The script uses standard Linux commands:

| Metric       | Command Used        |
| ------------ | ------------------- |
| CPU Usage    | `top`               |
| Memory Usage | `free`              |
| Disk Usage   | `df`                |
| Processes    | `ps`                |
| OS Info      | `/etc/os-release`   |
| Uptime       | `uptime`            |
| Logs         | `/var/log/auth.log` |

---

##  Automation (Optional)

You can schedule this script using **cron jobs**:

```bash
crontab -e
```

Example: Run every 5 minutes

```bash
*/5 * * * * /path/to/server-stats.sh >> /var/log/server-stats.log
```

---

##  Future Improvements

*  Add colored output for readability
*  Threshold-based alerts (CPU/Memory/Disk)
*  Export metrics to JSON or CSV
*  Send alerts via Email / Slack
*  Build a web dashboard (Flask / Node.js)
*  Integrate with Prometheus & Grafana

---

##  Use Cases

* Quick server health monitoring
* Debugging performance bottlenecks
* Lightweight alternative to heavy monitoring tools
* DevOps learning project
* Cloud VM monitoring

---

##  Contributing

Contributions are welcome!

1. Fork the repository
2. Create a new branch
3. Make your changes
4. Submit a pull request

---

##  License

This project is licensed under the **MIT License**.

---

##  Author

**Prem Krishna**

---

##  Support

If you found this project helpful, please consider giving it a star on GitHub!
