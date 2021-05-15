data = {'ID':[1,2,3,4,5,6,7,8,9,10],'Name':['Ram','Shyam','Hari','Sita','Anand','Sunny','Sweta','Dharmesh','Dipanjan','Sinu'],'Gender':['M','M','M','F','M','M','F','M','M','F'],'DO_Birth':["01/01/1998", "09/23/1998", "11/15/1998", "05/11/1998","02/27/1998","06/01/1998","06/14/1998","03/31/1998","07/08/1998","11/30/1998"],'Do_Admission':["01/01/2001", "09/23/2001", "11/15/2005", "05/11/2001","02/27/2002","06/01/2008","06/14/2006","03/31/2005","07/08/2006","11/30/2013"],'Payment_Made':['Y','N','N','Y','Y','Y','N','Y','N','Y'],'Mp_Percentage':[85,82,80,72,70,92,94,89,86,69],'Hs_Percentage':[89,82,72,80,92,94,86,69,70,79]}
studata = pd.DataFrame(data)
studata['DO_Birth']=pd.to_datetime(studata['DO_Birth'])
studata['Do_Admission']=pd.to_datetime(studata['Do_Admission'])


import statistics as stat
stat.mean(studata['Mp_Percentage'])
stat.median(studata['Mp_Percentage'])



stat.mean(studata[studata['Gender']=='M']['Mp_Percentage'])


stat.mean(studata[studata['Gender']=='F']['Mp_Percentage'])





import pandas as pd
data = {'ID':[1,2,3,4,5,6,7,8,9,10],'Name':['Ram','Shyam','Hari','Sita','Anand','Sunny','Sweta','Dharmesh','Dipanjan','Sinu'],'Gender':['M','M','M','F','M','M','F','M','M','F'],'DO_Birth':["01/01/1998", "09/23/1998", "11/15/1998", "05/11/1998","02/27/1998","06/01/1998","06/14/1998","03/31/1998","07/08/1998","11/30/1998"],'Do_Admission':["01/01/2001", "09/23/2001", "11/15/2005", "05/11/2001","02/27/2002","06/01/2008","06/14/2006","03/31/2005","07/08/2006","11/30/2013"],'Payment_Made':['Y','N','N','Y','Y','Y','N','Y','N','Y'],'Mp_Percentage':[85,82,80,72,70,92,94,89,86,69],'Hs_Percentage':[89,82,72,80,92,94,86,69,70,79]}
studata = pd.DataFrame(data)
studata['DO_Birth']=pd.to_datetime(studata['DO_Birth'])
studata['Do_Admission']=pd.to_datetime(studata['Do_Admission'])

import statistics as stat
from datetime import date
ans=[]
test=studata['DO_Birth']
for i in range(9):
    x=(pd.to_datetime("2021-04-25")-pd.to_datetime(test[i])).days
    ans.append(x)
print(stat.mean(ans))


stat.mean(ans)/365

round(stat.mean(ans)/365)


import pandas as pd
data = {'ID':[1,2,3,4,5,6,7,8,9,10],'Name':['Ram','Shyam','Hari','Sita','Anand','Sunny','Sweta','Dharmesh','Dipanjan','Sinu'],'Gender':['M','M','M','F','M','M','F','M','M','F'],'DO_Birth':["01/01/1998", "09/23/1998", "11/15/1998", "05/11/1998","02/27/1998","06/01/1998","06/14/1998","03/31/1998","07/08/1998","11/30/1998"],'Do_Admission':["01/01/2001", "09/23/2001", "11/15/2005", "05/11/2001","02/27/2002","06/01/2008","06/14/2006","03/31/2005","07/08/2006","11/30/2013"],'Payment_Made':['Y','N','N','Y','Y','Y','N','Y','N','Y'],'Mp_Percentage':[85,82,80,72,70,92,94,89,86,69],'Hs_Percentage':[89,82,72,80,92,94,86,69,70,79]}
studata = pd.DataFrame(data)
studata['DO_Birth']=pd.to_datetime(studata['DO_Birth'])
studata['Do_Admission']=pd.to_datetime(studata['Do_Admission'])

import statistics as stat
from datetime import date
ans=[]
test=studata['DO_Birth']
test1=studata['Gender']
for i in range(9):
    if(test1[i]=='M'):
        x=(pd.to_datetime("2021-04-25")-pd.to_datetime(test[i])).days
        ans.append(x)
print(stat.mean(ans))


import numpy as np
print(studata.describe())
print(Campus_Employement.describe())
a=len(studata[studata['Gender']=='M'].axes[0])
b=len(studata[studata['Gender']=='F'].axes[0])
print(a,":",b)





