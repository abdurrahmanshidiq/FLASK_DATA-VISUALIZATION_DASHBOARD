from sqlalchemy import create_engine
import pymysql
import pandas as pd

sqlengine = create_engine('mysql+pymysql://root:CKRts1202@127.0.0.1', pool_recycle=3306)
dbConnection = sqlengine.connect()
dfTips = pd.read_sql("select * from flaskapp.tips", dbConnection)
print(dfTips)