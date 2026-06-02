import requests
import pandas as pd
import os

SAVE_PATH = "data/raw"

schemes = {
    "HDFC_Top_100_Direct": 125497,
    "SBI_Bluechip": 119551,
    "ICICI_Bluechip": 120503,
    "Nippon_Large_Cap": 118632,
    "Axis_Bluechip": 119092,
    "Kotak_Bluechip": 120841
}

for name, code in schemes.items():
    url = f"https://api.mfapi.in/mf/{code}"

    response = requests.get(url)
    response.raise_for_status()

    data = response.json()

    df = pd.DataFrame(data["data"])

    df["scheme_code"] = code
    df["scheme_name"] = data["meta"]["scheme_name"]

    filename = os.path.join(SAVE_PATH, f"{name}_live_nav.csv")

    df.to_csv(filename, index=False)

    print(f"Saved: {filename}")