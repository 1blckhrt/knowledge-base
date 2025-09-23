---
title: "List and Dictionary Comprehensions"
date: 2025-09-15T12:00:00
draft: false
tags: ["python", "programming"]
categories: ["Programming", "Python Fundamentals"]
---

These are ways to build up or transform list from a list you already have.

```python
words = get_words("words_list.txt")
lowercase_words = [word.lower() for word in words] # list comprehension

for word in lowercase_words():
    print(word)
```

You can also check for conditions within them.

```python
words = get_words("words_list.txt")
lowercase_words = [word.lower() for word in words if len(word) > 4] # list comprehension, only include words with length > 4

for word in lowercase_words():
    print(word)
```

You can simplify this example using dictionary comprehensions.

```python
counts = {word: words.count(word) for word in lowercase_words}
```
