from bs4 import BeautifulSoup
import pandas as pd
soup=BeautifulSoup(open(r"C:\Users\Dharmesh Harshwal\Downloads\CovidTIU.html",encoding="utf-8"),"html.parser")
table=soup.find('table',class_='statetable table table-striped')
records=[]
for row in table.find_all('tr'):
    for cell in table.find_all('td'):
        state=cell.text
        records.append(state)

df= pd.DataFrame(records)
df.to_csv('python2.csv')
