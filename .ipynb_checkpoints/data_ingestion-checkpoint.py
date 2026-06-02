import pandas as pd
import os

DATA_PATH = "data/raw"

files = os.listdir(DATA_PATH)

print(f"Total CSV files found: {len(files)}")

for file in files:
    if file.endswith(".csv"):

        print("\n" + "="*60)
        print("FILE:", file)

        df = pd.read_csv(os.path.join(DATA_PATH, file))

        print("Shape:")
        print(df.shape)

        print("\nColumns:")
        print(df.columns.tolist())

        print("\nMissing Values:")
        print(df.isnull().sum().sum())

        print("\nDuplicate Rows:")
        print(df.duplicated().sum())