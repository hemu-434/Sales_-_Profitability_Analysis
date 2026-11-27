from pathlib import Path
import pandas as pd
root=Path(__file__).resolve().parents[1]
df=pd.read_csv(root/'data/sales.csv',parse_dates=['order_date'])
assert df.order_id.is_unique and not df.isna().any().any()
df['revenue']=df.quantity*df.unit_price
df['cost']=df.quantity*df.unit_cost
df['profit']=df.revenue-df.cost
df.to_csv(root/'data/cleaned_sales.csv',index=False)
for col in ['region','category','product']:
 a=df.groupby(col)[['revenue','profit']].sum()
 a['margin_pct']=100*a.profit/a.revenue
 print(a.sort_values('revenue',ascending=False))
