file = open("/Users/abigale/Desktop/jmeter/data/account.txt")
lines = file.read()
import json
data = json.loads(lines)
print(data.keys())
import csv
with open("/Users/abigale/Desktop/jmeter/data/account.csv", "w") as csv_file:
    f = csv.writer(csv_file)
    for key, value in data.items():
        f.writerow([key, value])
