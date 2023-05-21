import random

# Generate a random number between 1 and 10
random_number = random.randint(1, 10)
print("Random number:", random_number)

# Generate a random floating-point number between 0 and 1
random_float = random.random()
print("Random float:", random_float)

# Generate a random element from a list
fruits = ['apple', 'banana', 'orange', 'kiwi', 'mango']
random_fruit = random.choice(fruits)
print("Random fruit:", random_fruit)

# Shuffle the elements in a list randomly
random.shuffle(fruits)
print("Shuffled fruits:", fruits)
