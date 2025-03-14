from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/", methods=["GET"])
def _index():
    return jsonify({"name": "Azzis Arswendo"}), 200

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=5000)
