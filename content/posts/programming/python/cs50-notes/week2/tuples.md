---
title: "Tuples"
date: 2025-09-22T12:00:00
draft: false
tags: ["python", "programming"]
categories: ["Programming", "Python Fundamentals"]
---

Tuples are used for multiple values inside one variable. They are denoted with parentheses.

```python
coordinates = (40, -40)
```

If you want to break them apart, you can use bracket notation and index in.

```python
print(coordinates[0])
print(coordinates[1])
```

You can also unpack them into distinct variables.

```python
latitude, longtiude = coordinates
```

Tuples do not support item assignment.

```python
coordinates[0] = -42.376 # crash
```

Tuples are also more memory efficient.
