from flask import *

app = Flask(__name__)
app.secret_key = "key"

from dbconnection import *


@app.route("/")
def login():
    return render_template("admin/login.html")


@app.route("/getLogin", methods=['post'])
def getLogin():
    uname = request.form['textfield']
    pwd = request.form['textfield2']
    qry = "select * from login where username =%s and password=%s"
    vals = (uname, pwd)
    result = selectone(qry, vals)
    if result is None:
        return '''<script>alert ("invalid");window.location="/"</script>'''
    elif result[4] == 'admin':
        return render_template("admin/admins.html")
    elif result[4] == "employee":
        session['lid'] = result[0]
        return render_template("employee/employee.html")
    else:
        return '''<script>alert("invalid");window.location="/"</script>'''


@app.route("/logout")
def logout():
    return redirect('/')




@app.route("/admins")
def admins():
    return render_template("admin/admins.html")

@app.route("/leaveRequest")
def leaveRequest():
    return render_template("employee/leaveRequest.html")


if __name__ == "__main__":
    app.run(debug=True)
