def file_read():
    marks={}
    with open("sample.txt","r") as file:
        for line in file:
            clean_line=line.strip().split(",")
            if len(clean_line)==2:         #we want two values for our two variables(subject ,marks) this line passes the empty line and a lilne with more than two values
                subject=clean_line[0]
                mark=int(clean_line[1])
                marks[subject]=mark
    return marks
def total_and_average(marks):
    total=0
    for m in marks.values():
        total+=m
    average=total/len(marks)
    return total,average
def write_files(total,average):
    with open("result.txt","a")as file:
        file.write("\nTotal mark is:"+str(total))
        file.write("\nAverage is:"+str(average))
        return "file updated"
marks=file_read()
total,average=total_and_average(marks)
update=write_files(total,average)
print("The dictionary is:",marks)
print("The total mark is:",total)
print("The aveerage of your mark is:",average)
print(update)

            
        