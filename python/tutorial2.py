# Python Syntax Tutorial: Control Flow
# https://docs.python.org/3/tutorial/controlflow.html

# x = int(input("Please enter an integer number: "))
x = 1

if x < 0:
    x = 0
    print("negative changed to zero")
elif x == 0:
    print("zero")
elif x == 1:
    print("single")
else:
    print("more")


