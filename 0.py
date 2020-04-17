import pandas as pd
import seaborn as sns

tips = sns.load_dataset('tips')
tips.to_csv(r'C:\Users\Admin\Desktop\datatips.csv', index=False)

# print(len(tips))