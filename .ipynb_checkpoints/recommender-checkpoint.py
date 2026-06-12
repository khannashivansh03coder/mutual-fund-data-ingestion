import pandas as pd

performance = pd.read_csv(
    "data/processed/07_scheme_performance_cleaned.csv"
)

risk = input("Enter Risk Appetite (Low/Moderate/High): ")

filtered = performance[
    performance["risk_grade"].str.lower() == risk.lower()
]

top3 = (
    filtered
    .sort_values("sharpe_ratio", ascending=False)
    .head(3)
)

print(
    top3[
        [
            "scheme_name",
            "fund_house",
            "sharpe_ratio",
            "return_3yr_pct"
        ]
    ]
)