import csv

fr = open('./data1.csv',encoding='utf-8-sig')
fw = open('./process_data.csv',mode="w",encoding='utf-8-sig',newline="")
# with open("./data1.csv",encoding='utf-8') as f:
reader = csv.reader(fr)
write=csv.writer(fw)
rows=[row for row in  reader]
print(rows[0])
for row in rows:
    if int(row[0])!=2333 and int(row[0])!=1111 and int(row[0])!=-2333:
        write.writerow(row)
fr.close()
fw.close()


# print(type(data1[0]))


# with open("D:\\test.csv",'a') as f:
#      row=['曹操','23','学生','黑龙江','5000']
#      write=csv.writer(f)
#      write.writerow(row)
#      print("写入完毕！")
# import xlrd


# book = xlrd.open_workbook('./data1.xlsx')
# print('sheet页名称:',book.sheet_names())
# sheet = book.sheet_by_index(0)
# rows = sheet.nrows
# cols = sheet.ncols
# print('该工作表有%d行，%d列.'%(rows,cols))