from flask import Flask

app = Flask("project",template_folder='templates',static_folder='public')
app.secret_key = "Killer2391998"

from project.controllers import *
