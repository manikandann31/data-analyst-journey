#a function which is not inside the class is simply called a function
def say_hello():
    print("<<<<<<HELLO USER>>>>>")

say_hello()    # a function is  executed when it is simpley called by its name 

#a fcuntion which is written inside the class is called as 
class intro:
    def hello(self):
        print("HELLO")

obj1=intro()     #creating a object or a class , a method is called by creating a object for it class

obj1.hello()     #what python assumes by the line is : intro.hello(obj), so it contain one paramter which is given as self(in line 9)
