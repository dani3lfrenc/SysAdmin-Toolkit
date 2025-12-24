# 📂 SYSADMIN-TOOLKIT: PowerShell Toolkit for Active Directory
[![PowerShell](https://img.shields.io/badge/PowerShell-5.1%20%7C%207.0+-blue?style=flat&logo=powershell)](https://microsoft.com/powershell)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

> A collection of PowerShell scripts designed to simplify **Active Directory** management, automate repetitive tasks, and enhance domain security.

---

## 🚀 Key Features
The toolkit is organized into modules for easy navigation:

* 👤 **User Management**: Bulk onboarding and user lifecycle management scripts.
* 🔒 **Security Audit**: Tools to identify vulnerabilities, expired passwords, and privileged accounts.
* 📊 **Reporting**: Generate detailed CSV/HTML reports on domain health and inventory.
* 🧹 **AD Cleanup**: Automated cleanup of stale user and computer accounts.

---

## 🛠️ Requirements
Before running these scripts, ensure you have:
1. **Windows Server** (2016/2019/2022) or a client with **RSAT** (Remote Server Administration Tools) installed.
2. Active Directory PowerShell module:
   ```powershell
   Install-WindowsFeature RSAT-AD-PowerShell