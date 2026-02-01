# WORK-FLOW-OPENER
A lightweight, automated Batch Script designed for efficient file deployment and workspace management.

This tool streamlines the process of opening multiple project files within a specific directory while providing real-time status updates and system validation.

## 🚀 Key Features

* **Automated Workspace Initialization**: Automatically opens all files within a target directory, saving time during daily setup.
* **Intelligent Path Validation**: Verifies the existence of the target folder before execution to prevent system errors.
* **Professional UI/UX**: Features a custom ASCII header, organized status logs, and a 90x32 console window for better readability.
* **Resource Management**: Implements a 1-second sequential delay between file executions to prevent CPU/RAM spikes.
* **Audio Feedback**: Integrated PowerShell notification sounds (beeps) to alert the user upon task completion.
* **Recursive Safety**: Built-in logic to ensure the script does not attempt to launch itself (`%~nx0`).

---

## 🛠️ Configuration

To customize the launcher for your specific workflow, edit the variables at the top of the `.bat` file:

```batch
:: --- CONFIGURATION ---
set "targetFolder=C:\Your\Path\To\Folder"
set "devName=YOUR_NAME"
set "version=3.0"

```

---

## 📂 Installation & Usage

1. **Download**: Clone this repository or download the `.bat` file.
2. **Configure**: Right-click the file and select **Edit**. Change the `targetFolder` path to match your local work directory.
3. **Run**: Double-click the script to execute.
4. **Standby**: The script will display a summary and remain open for 5 seconds after completion before closing automatically.

---

## 💻 Technical Details

The script utilizes advanced Batch scripting techniques:

* `setlocal enabledelayedexpansion`: For dynamic variable updates within loops.
* `mode con`: Customizes the terminal window dimensions for a professional look.
* `for %%f in (*)`: Iterates through files to perform the `start` command.
* `powershell [console]::beep`: Provides hardware-level audio feedback without external assets.

---

## 👤 Credits & Versioning

* **AUTHOR**:JEROM REQUILLO
* **Version**: 3.0 (Stable)
* **Compatibility**: Windows 7, 10, 11

---

> **Disclaimer**: This tool is designed for productivity. Ensure that your target folder contains only the files you intend to open to avoid system lag.

---

