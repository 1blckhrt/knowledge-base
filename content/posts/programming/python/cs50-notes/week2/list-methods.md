---
title: "List Methods"
date: 2025-09-21T12:00:00
draft: false
tags: ["python", "programming"]
categories: ["Programming", "Python Fundamentals"]
---

You can add items to lists.

```python
history = []
action = input("Action: ")
history.append(action)
print(history)
```

You can also remove the last time from the list.

```python
undone = history.pop()
print(f"Undone: {undone}")
```

You can clear a list.

```python
history.clear()
```
