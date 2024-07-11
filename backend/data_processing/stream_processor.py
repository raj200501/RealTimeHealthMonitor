import time
import random

def simulate_data_stream():
    while True:
        data = {
            'type': 'Heart Rate',
            'value': random.randint(60, 100),
            'date': time.strftime('%Y-%m-%dT%H:%M:%SZ', time.gmtime())
        }
        print(data)
        time.sleep(1)

if __name__ == '__main__':
    simulate_data_stream()
