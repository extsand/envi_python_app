import os

from flask import Flask, request
from flask import render_template
app = Flask(__name__)
host="0.0.0.0"
#Grab env from system:
app_username = os.getenv("APP_USERNAME")
app_db = os.getenv("APP_DB")
app_password = os.getenv("APP_PASSWORD")

env_set = { app_password, app_db, app_username }

@app.route('/')
def get_index():
    return render_template('index.html',
                           data_send=env_set)

if __name__ == '__main__':
    app.run(host)
