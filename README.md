# Data Engineering Learning Workflow

This repository contains my weekly practice work as I prepare for a **Junior Data Engineer** role.  
The current focus is building strong foundations in **Python, CSV files, Git/GitHub, and basic data validation**.

---

## Current Progress

| Week | Focus | Status |
|---|---|---|
| Week 1 | Python setup, first script, Git repository | Completed / In progress |
| Week 2 | CSV reading, fixtures, edge case testing | In progress |

---

# Week 1 — Python Workspace and Git Setup

## Goal

Set up a working Python environment, write a simple Python script, and save the project using Git.

## What I Practiced

- Creating a project folder
- Running Python from the terminal
- Creating and activating a virtual environment
- Writing a basic Python script
- Initializing a Git repository
- Creating a `.gitignore` file
- Creating a README file
- Making the first Git commit

## Files

| File / Folder | Purpose |
|---|---|
| `.venv/` | Local Python virtual environment, ignored by Git |
| `.gitignore` | Prevents unnecessary files like `.venv/` from being committed |
| `tryouts.py` | First Python practice script |
| `README.md` | Project documentation |

## Run Command

From the `week-01` folder:

```bash
python tryouts.py
```

## Git Commands Used

```bash
git init
git add -- .gitignore README.md tryouts.py
git commit -m "Add week 1 Python script and run instructions"
```

---

# Week 2 — CSV Reading and Edge Case Testing

## Goal

Practice reading CSV files with Python and checking how the script behaves with normal and problematic data.

## What I Practiced

- Creating CSV files
- Reading CSV files using `csv.DictReader`
- Passing a filename to a Python script from the terminal
- Inspecting the first two rows of a CSV file
- Testing edge cases
- Understanding malformed data
- Documenting expected and actual results

## Files

| File | Purpose |
|---|---|
| `profiler.py` | Python script that reads a CSV file passed from the command line |
| `valid.csv` | A well-formed CSV file used for testing |
| `malformed.csv` | A CSV file with one invalid price value |
| `empty.csv` | An empty file used to test how the script handles no data |
| `orders.csv` | Main practice orders dataset |

---

## Current `profiler.py` Behavior

The script accepts a CSV filename from the command line and prints the first two rows.

Example command:

```bash
python profiler.py valid.csv
```

Example output:

```python
[
    {'order_id': '1001', 'customer': 'Ava', 'product': 'Notebook', 'quantity': '2', 'price': '5.99'},
    {'order_id': '1002', 'customer': 'Ben', 'product': 'Pen', 'quantity': '3', 'price': '2'}
]
```

---

## Edge Case Tests

| File | Expected Result | Actual Result |
|---|---|---|
| `empty.csv` | Returns an empty list and does not crash. | Returned `[]`. |
| `valid.csv` | Reads the first two rows successfully. | Returned rows `1001` and `1002`. |
| `malformed.csv` | Reads the first two rows successfully. The invalid price is not detected yet because the script currently inspects only the first two rows. | Returned rows `1001` and `1002`. |

---

## Important Note

The file `malformed.csv` contains an invalid price value:

```csv
1007,Gia,Marker,2,not-a-price
```

The current profiler does **not** detect this yet because it only prints the first two rows.

The next improvement is to scan all rows and detect invalid prices.

---

# Next Step

Improve `profiler.py` so it can:

- Count total rows
- Count valid prices
- Count invalid prices
- Identify which order has the invalid price
- Calculate total sales using:

```text
quantity × price
```

Expected result for `malformed.csv`:

| Metric | Expected Value |
|---|---|
| Total rows | 10 |
| Valid prices | 9 |
| Invalid prices | 1 |
| Invalid order | `1007` |
| Total valid sales | `70.71` |

---

# Learning Reflection

So far, I learned how to create a Python project, run scripts from the terminal, use Git to track my work, and test CSV files with different data conditions.

This is an early step toward building real data engineering skills because data engineers often need to read files, validate records, handle bad data, and document their work clearly.