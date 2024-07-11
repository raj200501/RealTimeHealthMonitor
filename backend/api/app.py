from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/api/health_data', methods=['GET'])
def get_health_data():
    # Fetch health data from database or external source
    health_data = [
        {'type': 'Heart Rate', 'value': 72, 'date': '2023-01-01T12:00:00Z'},
        {'type': 'Steps', 'value': 10000, 'date': '2023-01-01T12:00:00Z'}
    ]
    return jsonify(health_data)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
