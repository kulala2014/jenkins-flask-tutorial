from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Flask Dockerized'

def main():
    app.run(debug=True, host='0.0.0.0')

if __name__ == "__main__":
    main()