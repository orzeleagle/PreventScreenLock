import pyautogui
import time

def prevent_screen_lock(interval=60):
    """
    Prevents screen lock by moving the mouse slightly or simulating a keypress.

    Args:
        interval (int): Number of seconds between actions. Default is 60.
    """
    print("Prevent Screen Lock Script is running. Press Ctrl+C to stop.")
    try:
        while True:
            # Move the mouse slightly to keep the system active
            current_position = pyautogui.position()
            pyautogui.moveTo(current_position.x + 1, current_position.y)
            pyautogui.moveTo(current_position.x, current_position.y)
            
            # Alternatively, you can use pyautogui.press to simulate a keypress:
            # pyautogui.press('shift')  # Uncomment if you prefer a keypress
            
            # Wait for the specified interval
            time.sleep(interval)
    except KeyboardInterrupt:
        print("\nScript stopped.")

# Run the script with a 60-second interval
prevent_screen_lock(interval=60)
