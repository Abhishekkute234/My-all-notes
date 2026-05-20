import json
import os

os.makedirs("PYTHON", exist_ok=True)

notebook = {
    "cells": [],
    "metadata": {},
    "nbformat": 4,
    "nbformat_minor": 5
}

def add_md(text):
    notebook["cells"].append({
        "cell_type": "markdown",
        "metadata": {},
        "source": [line + "\n" for line in text.strip().split("\n")]
    })

def add_code(text):
    notebook["cells"].append({
        "cell_type": "code",
        "execution_count": None,
        "metadata": {},
        "outputs": [],
        "source": [line + "\n" for line in text.strip().split("\n")]
    })

# Add content
add_md("""
# Chai aur Python - Detailed Notes ☕🐍
These notes cover all topics discussed in the 'Chai aur Python' playlist by Hitesh Choudhary, specifically tailored for Python interviews and in-depth understanding.
""")

add_md("""
## 1. Introduction & Internal Working of Python
### Environment Setup
- **Virtual Environments:** Used to isolate project dependencies. Prevents conflicts between packages required by different projects.
- **Conda / Jupyter:** Common tools for data science and interactive Python development. Jupyter notebooks allow running code in 'cells'.

### How Python Works Internally
- **Compiled or Interpreted?** Python is both! 
- **Source Code (`.py`) -> Bytecode (`.pyc` in `__pycache__`) -> PVM (Python Virtual Machine)**.
- **Bytecode:** A low-level, platform-independent representation of your source code. It is executed by the PVM.
- **PVM:** The runtime engine of Python. It interprets the bytecode.
- **Garbage Collection:** Python automatically manages memory using Reference Counting and a Garbage Collector (for cyclic references).
""")

add_code("""
# Checking object references and internal memory addresses
import sys

a = 10
b = 10
print(id(a), id(b))  # Might point to the same memory location due to integer caching
print(sys.getrefcount(a)) # Get reference count
""")

add_md("""
## 2. Core Data Types & Mutability
Python's core types can be divided into **Mutable** and **Immutable**.
- **Immutable Types:** `int`, `float`, `string`, `tuple`, `frozenset`, `bool`. Once created, their value in memory cannot change. Modifying them creates a new object.
- **Mutable Types:** `list`, `dict`, `set`. They can be modified in place.

### Strings
- Immutable.
- Methods: `.upper()`, `.lower()`, `.split()`, `.join()`, `.replace()`, `.find()`.
- Slicing: `string[start:stop:step]`.

### Lists
- Mutable, ordered collections.
- Methods: `.append()`, `.extend()`, `.pop()`, `.remove()`, `.insert()`.
- List comprehension: `[x**2 for x in range(10)]`.

### Dictionaries
- Key-Value pairs. Keys must be immutable (strings, numbers, tuples).
- Accessing: `dict.get(key, default)`.
- Methods: `.keys()`, `.values()`, `.items()`.

### Tuples
- Immutable lists. Faster and safer for data that shouldn't change.
- Single element tuple requires a comma: `(1,)`.

### Sets
- Unordered collection of unique elements.
- Useful for removing duplicates and mathematical operations (union, intersection).
""")

add_code("""
# List vs Tuple Mutability
my_list = [1, 2, 3]
my_tuple = (1, 2, 3)

my_list[0] = 99  # Allowed
# my_tuple[0] = 99 # TypeError: 'tuple' object does not support item assignment
""")

add_md("""
## 3. Control Flow & Behind the Scenes of Loops
### Conditional Statements
- `if`, `elif`, `else`.
- Truthy and Falsy values: `0`, `""`, `[]`, `{}`, `None` evaluate to `False`.

### Loops (Behind the Scenes)
- `for` loop, `while` loop.
- **Iterable:** An object you can iterate over (e.g., list, string). Has an `__iter__()` method.
- **Iterator:** The object that actually does the iterating. Has a `__next__()` method.
- When you run a `for` loop on a list, Python calls `iter(list)` to get an iterator, then calls `next(iterator)` repeatedly until a `StopIteration` exception is raised.
""")

add_code("""
# Simulating a for loop using iter() and next()
my_list = [1, 2, 3]
iterator = iter(my_list)

try:
    while True:
        item = next(iterator)
        print(item)
except StopIteration:
    pass
""")

add_md("""
## 4. Functions, Scopes & Closures
### Functions
- Defined using `def`.
- Arguments: Positional, Keyword, Default, `*args` (variable positional), `**kwargs` (variable keyword).

### Variable Scopes (LEGB Rule)
Python resolves variables in this order:
1. **L**ocal: Inside the current function.
2. **E**nclosing: Inside enclosing functions (nested functions).
3. **G**lobal: Declared at the top level of the script.
4. **B**uilt-in: Built-in Python names (like `print`, `len`).

### Closures
- A closure occurs when a nested function captures and remembers the variables from its enclosing scope, even after the outer function has finished executing.
""")

add_code("""
# Closure Example
def outer_function(msg):
    def inner_function():
        print(f"Message from outer: {msg}")
    return inner_function

my_func = outer_function("Hello World")
my_func()  # Remembers 'msg'
""")

add_md("""
## 5. Object-Oriented Programming (OOP)
- **Class:** A blueprint for creating objects.
- **Object:** An instance of a class.
- **`__init__`:** The constructor method, called when an object is created.
- **`self`:** Refers to the current instance of the class.

### 4 Pillars of OOP
1. **Encapsulation:** Bundling data (attributes) and methods that operate on the data. Restricting direct access using naming conventions (e.g., `_private_var`, `__mangled_var`).
2. **Inheritance:** A class inheriting attributes and methods from another class.
3. **Polymorphism:** Methods having the same name but different behaviors in different classes (e.g., method overriding).
4. **Abstraction:** Hiding complex implementation details.

### Magic / Dunder Methods
- Double underscore methods like `__str__`, `__len__`, `__add__` which give special capabilities to objects.
""")

add_code("""
class Car:
    def __init__(self, brand, model):
        self.brand = brand
        self.model = model
    
    def __str__(self):
        return f"{self.brand} {self.model}"

class ElectricCar(Car):
    def __init__(self, brand, model, battery_capacity):
        super().__init__(brand, model)
        self.battery_capacity = battery_capacity

my_ev = ElectricCar("Tesla", "Model S", "100kWh")
print(my_ev)
""")

add_md("""
## 6. Advanced Python: Decorators & Generators
### Decorators
- Functions that take another function as an argument and extend its behavior without modifying it explicitly.
- Very common in interview questions (e.g., write a timer decorator).

### Generators
- A special type of function that returns an iterator.
- Uses the `yield` keyword instead of `return`.
- **Memory Efficient:** They generate items one at a time on the fly, instead of storing everything in memory (like a list does).
""")

add_code("""
# Decorator Example (Timer)
import time

def timer(func):
    def wrapper(*args, **kwargs):
        start = time.time()
        result = func(*args, **kwargs)
        end = time.time()
        print(f"{func.__name__} took {end - start} seconds")
        return result
    return wrapper

@timer
def example_loop():
    for _ in range(1000000):
        pass

example_loop()

# Generator Example
def fibonacci_gen(n):
    a, b = 0, 1
    for _ in range(n):
        yield a
        a, b = b, a + b

print(list(fibonacci_gen(10)))
""")

add_md("""
## 7. Practical Development: APIs and Databases
### API Handling
- Using the `requests` library to make HTTP requests (GET, POST, etc.) to interact with external services.
- Parsing JSON responses using `.json()`.

### Database Integration
- **SQLite3:** Built-in Python library for lightweight SQL databases.
- **MongoDB:** NoSQL database, commonly interacted with using the `pymongo` package.
- Typical steps: Connect -> Create Cursor -> Execute Query -> Commit -> Close.
""")

add_code("""
# Basic API Request Example
import requests

try:
    response = requests.get('https://api.github.com')
    if response.status_code == 200:
        data = response.json()
        # print(data['current_user_url'])
except Exception as e:
    print("API Request Failed", e)
""")

add_md("""
## 8. Interview Preparation Checklist
- Be ready to explain Mutability and Object References.
- Know how List Comprehensions work and when to use them.
- Understand the LEGB rule for scopes.
- Be able to write a custom Decorator.
- Know the difference between Yield and Return (Generators vs Normal Functions).
- Understand basic OOP principles and how they are implemented in Python.
- Know how `__iter__` and `__next__` work behind `for` loops.
- Explain the Global Interpreter Lock (GIL) - it allows only one thread to execute Python bytecode at a time.
""")

with open('PYTHON/Chai_aur_Python_Notes.ipynb', 'w', encoding='utf-8') as f:
    json.dump(notebook, f, indent=2)

print("Notebook generated successfully!")
