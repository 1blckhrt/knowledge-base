---
title: "For Loops"
date: 2025-09-14T12:00:00
draft: false
tags: ["python", "programming"]
categories: ["Programming", "Python Fundamentals"]
---

# For Loops

For loops are used for repetitive actions in code, where you want to execute something for a certain amount of things or times.

```python
names = ["Mario", "Luigi", "Daisy", "Yoshi"]
for i in range(len(names)):
    print(f"Hello, {names[i]}")
```

You can also iterate over the list:

```python
names = ["Mario", "Luigi", "Daisy", "Yoshi"]
for name in names:
    print(f"Hello, {name}")
```
