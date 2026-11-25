import oracledb

with oracledb.connect(
    dsn="localhost:1521/FREEPDB1",
    user="system",
    password="abcdef1002",
) as connection:
    with connection.cursor() as cursor:
            cursor.execute("select * from students;")
            for row in cursor:
                print(row)