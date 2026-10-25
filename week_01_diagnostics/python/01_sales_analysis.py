import pandas as pd

df = pd.read_csv('../sales.csv')

print("Missing values per column:")
print(df.isna().sum())

df['total'] = df['price'] * df['quantity']
top_3 = df.sort_values(by='total', ascending=False).head(3)

print("\nTop 3 orders by total revenue:")
print(top_3)