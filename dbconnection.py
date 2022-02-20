import pymysql
def iud(qry,val):
    con=pymysql.connect(
        host='localhost',
        user='root',
        port=3306,
        password="",
        db='dgold'

    )
    cmd=con.cursor()
    cmd.execute(qry,val)
    id=cmd.lastrowid
    con.commit()
    con.close()
    return  id



def select(qry):
    con=pymysql.connect(
        host='localhost',
        user='root',
        port=3306,
        password="",
        db='dgold'

    )
    cmd=con.cursor()
    cmd.execute(qry)
    res=cmd.fetchall()
    con.commit()
    con.close()
    return  res


def selectall(qry,val):
    con=pymysql.connect(
        host='localhost',
        user='root',
        port=3306,
        password="",
        db='dgold'

    )
    cmd=con.cursor()
    cmd.execute(qry,val)
    res=cmd.fetchall()
    con.commit()
    con.close()
    return  res



def selectone(qry,val):
    con=pymysql.connect(
        host='localhost',
        user='root',
        port=3306,
        password="",
        db='dgold'

    )
    cmd=con.cursor()
    cmd.execute(qry,val)
    res=cmd.fetchone()
    con.commit()
    con.close()
    return  res

