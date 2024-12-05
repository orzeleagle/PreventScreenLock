# Prevent-ScreenLock.ps1
# This script prevents the screen from locking by simulating the press of the Scroll Lock key.

# Add a type definition for simulating keypresses using Windows API
Add-Type @"
using System;
using System.Runtime.InteropServices;

public class Keyboard
{
    [DllImport("user32.dll", CharSet = CharSet.Auto, ExactSpelling = true)]
    public static extern void keybd_event(byte bVk, byte bScan, int dwFlags, int dwExtraInfo);

    public const int KEYEVENTF_EXTENDEDKEY = 0x1;
    public const int KEYEVENTF_KEYUP = 0x2;
}
"@

# Virtual Key Code for Scroll Lock
$VK_SCROLL = 0x91

Write-Host "Prevent Screen Lock Script is running. Press Ctrl+C to stop."

# Loop to keep the script running
while ($true) {
    # Simulate pressing and releasing the Scroll Lock key
    [Keyboard]::keybd_event($VK_SCROLL, 0, [Keyboard]::KEYEVENTF_EXTENDEDKEY, 0)
    [Keyboard]::keybd_event($VK_SCROLL, 0, [Keyboard]::KEYEVENTF_KEYUP, 0)
    
    # Wait for 60 seconds before simulating the next keypress
    Start-Sleep -Seconds 60
}
