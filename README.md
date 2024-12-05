# Prevent Screen Lock PowerShell Script

This PowerShell script prevents the Windows screen from locking due to inactivity by simulating a keypress periodically.

---

## How It Works

The script uses the Windows API to simulate a Scroll Lock keypress every 60 seconds. This activity prevents the system from detecting inactivity and triggering a screen lock or sleep mode.

---

## Usage

### **Prerequisites**

- **Windows OS**: This script is designed for Windows.
- **PowerShell**: Ensure you have PowerShell installed (comes by default on most Windows versions).

---

### **Steps to Run**

1. **Download the Script**:
   Save the script as `Prevent-ScreenLock.ps1`.

2. **Open PowerShell**:
   Open a PowerShell window with appropriate permissions.

3. **Run the Script**:
   Navigate to the directory where the script is saved and execute it:
   ```powershell
   .\Prevent-ScreenLock.ps1
   ```

4. **Let It Run**:
   The script will run continuously in the background. It will display a message confirming it's active.

5. **Stop the Script**:
   Press `Ctrl+C` in the PowerShell window to terminate the script.

---

### **Optional: Run Script Without Window**
If you want to run the script in the background without keeping a PowerShell window open:
1. Create a shortcut with the following target:
   ```plaintext
   powershell.exe -WindowStyle Hidden -File "C:\path\to\Prevent-ScreenLock.ps1"
   ```
2. Place the shortcut in the **Startup Folder** to automatically run the script when your computer starts:
   - Press `Win + R`, type `shell:startup`, and hit Enter.
   - Move the shortcut to the folder.

---

## Disclaimer

- This script prevents the screen from locking but may not override policies enforced by your organization.
- Use responsibly to ensure compliance with your workplace or environment rules.

---

## Virtual Key Codes Reference

If you prefer simulating a different key, replace `VK_SCROLL` in the script with another virtual key code. For example:
- **F15 (unmapped key)**: `VK_F15 = 0x7E`

Refer to the [Microsoft Virtual-Key Codes documentation](https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes) for more options.

---

