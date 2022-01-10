from logging import debug
from flask import Flask,render_template,request,session,redirect,url_for
from flask_login.utils import login_required, logout_user
from flask_sqlalchemy import SQLAlchemy
from flask_login import UserMixin
from werkzeug.security import generate_password_hash,check_password_hash
from flask_login import login_user,logout_user,login_manager,LoginManager
from flask_login import login_required,current_user


# my db connection
local_server=True # setting localserver
app = Flask(__name__)
app.secret_key="swathi"

#this is for getting unique employee access
login_manager=LoginManager(app)
login_manager.login_view='login'

@login_manager.user_loader
def load_user(empid):
    return Regisform.query.get(int(empid))



#database name = cashandcarry

#loading the db to main.py file
#app.config['SQLALCHEMY_DATABASE_URL']='mysql://username:passwllord@localhost/databse_table_name'
app.config['SQLALCHEMY_DATABASE_URI']='mysql://root:@localhost/cashandcarry'
db=SQLAlchemy(app)


#creating db models(tables)
class test(db.Model):
    id=db.Column(db.Integer,primary_key=True)
    name=db.Column(db.String(100))
    email=db.Column(db.String(100))

class Regisform(UserMixin,db.Model):
    E_id=db.Column(db.Integer,primary_key=True)
    Ename=db.Column(db.String(50))
    Eaddress=db.Column(db.String(100))
    Epass=db.Column(db.String(1000))
    def get_id(self):
        return (self.E_id)


@app.route('/',methods=['POST','GET'])
def login():
    if request.method=="POST":
        EmployeeId=request.form.get('empid')  
        Password=request.form.get('epass')
        user=Regisform.query.filter_by(E_id=EmployeeId).first()

        if user and check_password_hash(user.Epass,Password):
            login_user(user)
            return redirect(url_for('home'))

        else:
            print('Invalid credentials')
            return render_template('register.html')
        # print(EmployeeId,Password)
    return render_template('login.html')


@app.route('/register',methods=['POST','GET'])
def register(): 
    # to get data from the form
    if request.method=="POST":

        EmployeeId=request.form.get('empid')  
        EmployeeName=request.form.get('empname')
        Address=request.form.get('address')
        Password=request.form.get('epass')
  #     print(EmployeeId,EmployeeName, Address,Password)
        user=Regisform.query.filter_by(E_id=EmployeeId).first()
        if user:
            print("Employee already exists")
            return render_template('/login.html')
        encpassword=generate_password_hash(Password)
        new_user=db.engine.execute(f"INSERT INTO `Regisform`(`E_id`, `Ename`, `Eaddress`, `Epass`) VALUES ('{EmployeeId}','{EmployeeName}','{Address}','{encpassword}')")
        # newuser=Regisform(E_id=EmployeeId,Ename=EmployeeName,Eaddress=Address,Epass=encpassword)
        # db.session.add(newuser)
        # db.session.commit()

        return render_template('login.html')
        
    return render_template('register.html')


@app.route('/home')
def home():
    return render_template('home.html')


@app.route('/logout')
@login_required
def logout():
    logout_user()
    return render_template('login.html')

@app.route('/stationary')
def stationary():
    return render_template('stationary.html')

@app.route('/med')
def med():
    return render_template('med.html')

@app.route('/toys')
def toys():
    return render_template('toys.html')

@app.route('/bakery')
def bakery():
    return render_template('bakery.html')

@app.route('/clothing')
def clothing():
    return render_template('clothing.html')

@app.route('/grocery')
def grocery():
    return render_template('grocery.html') 

app.run(debug=True)

# @app.route('/test')
# def test():
#     return render_template('test.html')
    # try:
    #     test.query.all()
    #     return 'db connected'
    # except:
    #     return 'not connected'

