# 📂 SYSADMIN-TOOLKIT: PowerShell Toolkit for Active Directory

[![PowerShell](https://img.shields.io/badge/PowerShell-5.1%20%7C%207.0+-blue?style=flat&logo=powershell)](https://microsoft.com/powershell)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

> A collection of PowerShell scripts designed to simplify **Active Directory** management, automate repetitive tasks, and enhance domain security.

---

## 🚀 Key Features

The toolkit is organized into modules for easy navigation:

- 👤 **Active Directory**: Bulk onboarding and user lifecycle management scripts.
- 🔒 **Security**: Domain hardening and user auditing to reduce the attack surface.
- 🌐 **Network Tools**: Connectivity testing and infrastructure monitoring utilities.

---

## 🛠️ Requirements

Before running these scripts, ensure you have:

1. **Windows Server** (2016/2019/2022) or a client with **RSAT** (Remote Server Administration Tools) installed.
2. Active Directory PowerShell module:

```powershell
Install-WindowsFeature RSAT-AD-PowerShell
```

---

## 📂 Modules & Usage

<details>
<summary><b>👤 User Management (Bulk Creation)</b></summary>

**Script:** `Active-Directory\New-BulkUsers.ps1`  
**Purpose:** Mass create users from CSV with random passwords and splatting.

```powershell
.\Active-Directory\New-BulkUsers.ps1 -CSVPath "path\to\file.csv" -TargetOU "OU=Users,DC=domain,DC=com"
```

Powershell parameters:
- CSV Path: Path to the CSV file containing user account data.
- TargetOU: The target Organizational Unit where users will be created.


CSV Fields: `FirstName`, `LastName`, `Username`

</details>

<details>
<summary><b>🔒 Security Audit (Stale Accounts)</b></summary>


Status: In Development (Coming soon)

</details>

<details>
<summary><b>🌐 Network Tools</b></summary>

Status: In Development (Coming soon)

</details>

---

## 🚀 Installation & Prerequisites

Clone the repository:

```bash
git clone https://github.com/your-username/SysAdmin-Toolkit.git
```

Requirements: RSAT (Active Directory module) and Admin privileges.

Execution Policy: Ensure you can run scripts:

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

---

## 📝 Best Practices

- Use splatting for clean parameter passing.
- Use Try/Catch blocks for error handling.
- New accounts receive a random 12-character password by default.

---

Developed by Daniel Francini
