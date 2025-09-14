---
title: "Lists"
date: 2025-09-14T12:00:00
draft: false
tags: ["python", "programming"]
categories: ["Programming", "Python Fundamentals"]
---

# Lists

```python
results = ["Mario", "Luigi", "Daisy"]
```

## List Methods

You can add on to a list using `.append()`. This always appends to the end of the list.

```python
results.append("Princess")
```

You can also add a list onto a list.

```python
results.append(["Bowser", "Donkey Kong"])
```

You can remove items from a list.

```python
results.remove("Bowser")
```

If you want to append a list with all elements of another list, you can use `.extend()`

```python
results.extend(["Bowser", "Donkey Kong"])
```

You can insert an item with it's intended index and the item itself.

```python
results.insert(0, "Bowser")
```

You can reverse a list using `.reverse()`.

```python
results.reverse()
```
