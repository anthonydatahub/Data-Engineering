from itertools import islice
from pathlib import Path
import csv
import sys

if len(sys.argv) < 2:
    print("Usage: python profiler.py <csv-file>")
    sys.exit(1)

csv_path = Path(sys.argv[1])

with csv_path.open(newline="", encoding="utf-8") as file:
    reader = csv.DictReader(file)
    first_two_rows = list(islice(reader, 2))

print(first_two_rows)