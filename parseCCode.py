import sys

arg = sys.argv[1]

space = ""
if len(sys.argv) == 4:
    space = " " * int(sys.argv[3])
else:
    space = "    "
fdIn = open(arg, 'r')
fdOut = open(sys.argv[2], 'w')
count = 0
for line in fdIn:
    line = line.strip()
    findComment = line.find("//")
    flag = 0;
    if (findComment == -1):
        findComment = len(line)
    plusTab = line.find("{", 0, findComment)
    minusTab = line.find("}", 0, findComment)
    if not(plusTab == -1 and minusTab == -1):
        if plusTab <= minusTab and plusTab != -1:
            count = count
        elif plusTab != -1:
            count += 1
            flag = 1
        elif minusTab != -1:
            count -= 1
    if (line[:2] == "//"):
        fdOut.write(line)
    else:
        fdOut.write((space * (count - flag)) + line + "\n")

