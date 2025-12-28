#creatina a file(testing,txt)
file=open("testing.txt","w")
file.write("Welcomee to the testing file\n")
file.write("Enter your testing data")
file.close()
#opening an existing csv file(sample.txt)
#usually to methods are used to oopen file 
#method1
file=open("sample.txt","r")
content=file.read()
print("The content in the file is :\n",content)
file.close()
#method2
with open("sample.txt","r") as file:
    content=file.read()
print("The content in the file is :",content) #the file dont need close statement because this method autoclose the file afetr work 
#adding more contentt(append) to the file
with open("sample.txt","a") as file:
    file.write("\nsocial,60")
with open("sample.txt","r") as file:
    updated_content=file.read()
    print("Your updated content is:\n",updated_content)
