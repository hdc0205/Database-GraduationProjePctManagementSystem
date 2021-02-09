# coding=utf-8
import pymssql
from django.db import connection


def main():
    conn = pymssql.connect(server="LAPTOP-QJ63JM5O", database="gradpro", autocommit=True)
    cursor = conn.cursor()
    # 读操作
    # cursor.execute('select 项目名称 from s')
    # row = cursor.fetchone()
    #     # while row:
    #     #     print(row[0][0])
    #     #     # print(row[0].encode('latin1').decode('gbk'))
    #     #     row = cursor.fetchone()

    # 写操作
    # k = cursor.execute("insert into S(学号,姓名,性别,项目名称,工号,提交时间,手机号码,院系号) values('18120008','李六','女','战后起飞操作','10002001','2020-02-16','13912341235','02')")
    # print(k)

    # 更新操作
    k = cursor.execute("update S set 项目名称='超级无敌nb' where 学号='18120008'")
    print(k)

    cursor.close()
    conn.close()

if __name__ == '__main__':
    main()
