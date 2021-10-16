import sys


lis=[]
data_by_lines = []
with open(sys.argv[1],'r') as f:
	data = f.readlines()
#print data
for i in data:
	d = i.split("|")
	lis.append(d)

#print res
new_data = []
for i in lis:
	new_data.append(i[2:])
print new_data

res = tuple(tuple(s) for s in new_data)

print res

