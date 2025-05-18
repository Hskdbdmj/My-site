import time

def print_colored(text, color_code):
    # Print colored text in terminal
    print(f"\033[{color_code}m{text}\033[0m")

# Welcome message
print_colored("Hello DEVX! Welcome to the Legendary Password Guesser.", "1;34")  # Blue

# Ask for username
username = input("Please enter the username: ")

# Correct password to guess (real, for testing)
correct_password = "secret123"

# List of password guesses
passwords = ["123456", "password", "secret123", "admin", "letmein"]

print(f"\nStarting to guess the password for user: {username}\n")

for pwd in passwords:
    time.sleep(1)  # delay to simulate guessing
    if pwd == correct_password:
        print_colored(f"Password found: {pwd}", "1;32")  # Green success
        break
    else:
        print_colored(f"Trying password: {pwd} ... Wrong", "1;31")  # Red fail
