---
title: "Dictionary Methods"
date: 2025-09-13T08:51:00
draft: false
tags: ["python", "programming"]
categories: ["Programming"]
---

Pretend you have a dictionary as follows, where the key is the word itself, and the value is how many characters are in that word or string.

```python
WORDS = {"HELLO": 5, "WORLD!", 6}
```

You can print all words by using dot notation.

```python
for word in WORDS.keys():
    print(word) # prints all words => HELLO and WORLD!
```

You can also access the values by using brackets.

```python
guess = input("Give a word: ")
if guess in WORDS.keys():
    print(f"Good job! You guessed the word {WORDS[guess] correctly!})
```

There's a method where you can remove a specific dictionary and return it.

```python
guess = input("Give a word: ")
if guess in WORDS.keys():
    print(f"Good job! You guessed the word {WORDS[guess] correctly!})
    points = WORDS.pop(guess)
```

There is a method that allows you to clear the dictionary.

```python
WORDS.clear()
```

There is a method to return both the key and value of an item.

```python
for key, value in WORDS.items():
    print(key)
    print(value)
```
