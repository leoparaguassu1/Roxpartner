from sqlalchemy import create_engine
import urllib
import pyodbc
import pandas as pd




conn = pyodbc.connect("DRIVER={SQL Server Native Client 11.0};"
                                 "SERVER=LEO;"
                                 "DATABASE=roxpartner;"
                                 "UID=carga_dw;"
                                 "PWD=carga_dw")

cursor = conn.cursor()

cursor.execute('DROP TABLE  roxpartner.dbo.ProductionProduct')
conn.commit()



df = pd.read_csv("C:/EngenharioDados/Production.Product.csv" , sep=";", engine='python')


params = urllib.parse.quote_plus("DRIVER={SQL Server Native Client 11.0};"
                                 "SERVER=LEO;"
                                 "DATABASE=roxpartner;"
                                 "UID=carga_dw;"
                                 "PWD=carga_dw")

engine = create_engine("mssql+pyodbc:///?odbc_connect={}".format(params))




df.to_sql('ProductionProduct', schema='dbo', con = engine)


#result = engine.execute('SELECT COUNT(*) FROM [dbo].[Person]')
#result.fetchall()
