import requests
from bs4 import BeautifulSoup
import pandas as pd
url="https://technoindiauniversity.ac.in/"
r=requests.get(url)
htmlCon = r.content
soup= BeautifulSoup(htmlCon,'html.parser')
data = soup.find_all('div',class_='single-content')
records=[]
for lists in data:
    schoolnm=lists.find('a').text
    dessc=lists.find('p').text
    records.append((schoolnm,dessc))


df=pd.DataFrame(records,columns=['school','description'])
df.to_csv('Firstassgn.csv')
