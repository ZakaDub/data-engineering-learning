import pandas as pd
from pathlib import Path

DATA_PATH = (
    Path(__file__).resolve().parents[1]
    / "data"
    / "sales_sample.csv"
)

df = pd.read_csv(DATA_PATH)

print("Missing values per column:")
print(df.isna().sum())

df['total'] = df['price'] * df['quantity']
top_3 = df.sort_values(by='total', ascending=False).head(3)

print("\nTop 3 orders by total revenue:")
print(top_3)