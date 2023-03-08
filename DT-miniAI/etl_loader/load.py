import openpyxl as xl
import sqlite3
from openpyxl.chart import BarChart, Reference
import pandas as pd
from dtminiAI import settings as st


con = sqlite3.connect("../db.sqlite3")

csv_file = st.CSV_FILE
graph_file = st.GRAPH_FILE

df = pd.read_excel(csv_file)
try:
    df.to_sql("etl_loader_customer", con, if_exists="append", index=False)
except Exception as e:
    print("FAILURE TO APPEND: {}".format(e))


def etl_load_workbook(filename):
    wb = xl.load_workbook(filename)
    sheet = wb["DATA"]
    for row in range(2, sheet.max_row + 1):
        id = sheet.cell(row, 1).value
        first_name = sheet.cell(row, 2).value
        last_name = sheet.cell(row, 3).value
        email = sheet.cell(row, 4).value
        gender = sheet.cell(row, 5).value
        ip_address = sheet.cell(row, 6).value

        print(id, first_name, last_name, email, gender, ip_address)

    values = Reference(sheet, min_row=2, max_row=sheet.max_row, min_col=4, max_col=4)

    chart = BarChart()
    chart.add_data(values)
    sheet.add_chart(chart, "h2")
    wb.save(graph_file)


etl_load_workbook(csv_file)


