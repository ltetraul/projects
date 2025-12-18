#!/usr/bin/env python
# coding: utf-8

# In[10]:


import pandas as pd
import matplotlib.pyplot as plt

#load excel file
file_path = "customer data.xlsx"
df = pd.read_excel(file_path, sheet_name="Report", skiprows=4)

#transactions by year
for date_col in ['Date', 'Start Date', 'Transaction Date']:
    if date_col in df.columns:
        df[date_col] = pd.to_datetime(df[date_col], format="%m/%d/%Y", errors='coerce')
        df['Year'] = df[date_col].dt.year
        print("\nTransactions by Year:")
        print(df['Year'].value_counts().sort_index())
        df['Year'].value_counts().sort_index().plot(kind='line', marker='o', title='Transactions Over Time')
        plt.ylabel('Transaction Count')
        plt.xlabel('Year')
        plt.show()
        break


# In[ ]:




