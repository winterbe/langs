# Python Syntax Tutorial: Introduction
# https://docs.python.org/3/tutorial/introduction.html

print("Hello World")

print(2 + 2)

print(0.5 * 3)

print(8 / 5)     # int
print(8.0 / 5)   # float

print(5 ** 2)    # 25

width = 20
height = 5 * 8
print(width * height)

print("Doesn't matter")

print("C:\name")
print(r"C:\name")

print("""\
Hi
There\
""")

print(3 * ("bam" + " "))
print(3 * "he" " ")

word = "python"
print(word[1])
print(word[-1])

print(word[1:4])
print(word[:4])
print(word[4:])
print(len(word))

print("ßßß")

odds = [1, 3, 5, 7, 9, ]
print(odds)
print(odds[:2])
print(odds[-1:])

oddsCopy = odds[:]
print(oddsCopy)
print(odds + oddsCopy)

oddsCopy.reverse()
print(oddsCopy)
print(oddsCopy.count(3))
print(len(oddsCopy))


# Fibonacci

a, b, li = 0, 1, []
while b < 30:
    li.append(b)
    a, b = b, a + b

print("Fibonacci:", str(li), end="...")

