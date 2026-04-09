input_str = input("Enter a string: ")

result = ""
for char in input_str:
    if char not in result:
        result += char

print("Result:", result)
