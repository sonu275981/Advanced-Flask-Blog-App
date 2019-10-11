from flask import Flask, render_template,request
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
import json
from flask_mail import Mail
# here we r importing render_template for displaying html pages

with open('config.json','r') as c:
    params = json.load(c) ["params"]
local_server = True
app = Flask(__name__)  # creating the Flask class object

# take help from flask_mail document site
app.config.update(
    MAIL_SERVER = 'smtp.gmail.com',
    MAIL_PORT = '465',
    MAIL_USE_SSL = True,
    MAIL_USERNAME = params['gmail-user'],
    MAIL_PASSWORD=  params['gmail-password']
)
mail = Mail(app)

if(local_server):
    app.config["SQLALCHEMY_DATABASE_URI"] = params ['local_uri']
else:
    app.config["SQLALCHEMY_DATABASE_URI"] = params['prod_uri']
# app.config["SQLALCHEMY_DATABASE_URI"] = 'mysql://root:@localhost/codinglegend'
db = SQLAlchemy(app)

class Contacts(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), nullable=False)
    phone_num = db.Column(db.String(12), nullable=False)
    msg = db.Column(db.String(120), nullable=False)
    date = db.Column(db.String(12), nullable=True)
    email = db.Column(db.String(50), nullable=False)

class Posts(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(80), nullable=False)
    slug = db.Column(db.String(50), nullable=False)
    content = db.Column(db.String(120), nullable=False)
    date = db.Column(db.String(12), nullable=True)
    img_file = db.Column(db.String(12), nullable=True)

@app.route('/')   # decorator drfines the
def home():
    return render_template('index.html', params=params)

@app.route('/about')
def about():
    return render_template('about.html',  params=params)

@app.route('/contact',  methods = ['GET', 'POST'])
def contact():
    if(request.method =='POST'):

        ''''Add entry to the data base'''
        name = request.form.get('name')
        email =request.form.get('email')
        phone =request.form.get('phone')
        message =request.form.get('message')
        entry = Contacts(name=name, phone_num=phone, msg=message, date= datetime.now(), email=email)
        db.session.add(entry)

         # sending email body
        db.session.commit()
        mail.send_message('New message from ' + name,
                          sender=email,
                          recipients=[params['gmail-user']],
                          body=message + "\n" + phone
                          )

    return render_template('contact.html',  params=params)

@app.route('/post/<string:post_slug>', methods = ['GET'])
def post_route(post_slug):
    post = Posts.query.filter_by(slug=post_slug).first()



    return render_template('post.html',  params=params, post=post)


app.run(debug=True)