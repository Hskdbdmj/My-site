import time
import os

def clear():
    os.system('clear')

def slow(text, delay=0.05):
    for char in text:
        print(char, end='', flush=True)
        time.sleep(delay)
    print()

def banner():
    clear()
    print("\033[1;31m")  # أحمر
    print("██████╗ ███████╗██╗   ██╗██╗  ██╗")
    print("██╔══██╗██╔════╝╚██╗ ██╔╝██║ ██╔╝")
    print("██████╔╝█████╗   ╚████╔╝ █████╔╝ ")
    print("██╔═══╝ ██╔══╝    ╚██╔╝  ██╔═██╗ ")
    print("██║     ███████╗   ██║   ██║  ██╗")
    print("╚═╝     ╚══════╝   ╚═╝   ╚═╝  ╚═╝")
    print("\033[1;33m")  # أصفر
    slow("       Welcome, Legendary DEVX!")
    print("\033[1;36m")  # سماوي
    slow("    تم التهيئة بنجاح... استعد للسيطرة.")
    print("\033[0m")  # رجوع للوضع العادي
    print("")

if __name__ == "__main__":
    banner()

