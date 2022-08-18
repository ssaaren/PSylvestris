handle = open("Trinotate.xls","r")
data = ""
for line in handle:
        splitline = line.split("\t")
        dots = [dat for dat in splitline if dat.strip()=="."]
        if len(dots) < 14:
                data += "\t".join(splitline)
                data += "\n"
handle.close()
outhandle = open("Trinotate.csv","w")
outhandle.write(data)
outhandle.close()
