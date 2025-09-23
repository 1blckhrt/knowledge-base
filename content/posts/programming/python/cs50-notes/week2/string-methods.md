---
title: "String Methods"
date: 2025-09-22T12:00:00
draft: false
tags: ["python", "programming"]
categories: ["Programming", "Python Fundamentals"]
---

You can capitalize words (only uppercases the first letter in the string).

```python
print(text.capitalize())
```

If you want to capitalize each word, you can title case it.

```python
print(text.title())
```

You can also remove whitespace.

```python
print(text.strip())
```

You can chain string methods together to use multiple.

```python
print(text.strip().title())
```

You can pretty print a list of strings.

```python
text = ['a', 'b', 'c', 'd', 'e']
print(", ".join(text))
```
