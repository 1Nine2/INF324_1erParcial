# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import pandas as pd
import psycopg2

con = "host = 'localhost' dbname='Student' user='postgres' password= '123456' "
conn = psycopg2.connect(con)

q="""Select 'notafinal' from depto where 'student.id' = 'depto.ids'"""


a=pd.read_sql(q,conn)