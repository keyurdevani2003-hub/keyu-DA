# Python NumPy & Matplotlib Assignment

## Task 1: Calculate Percentiles of Zomato Delivery Times

```python
import numpy as np

delivery_times = [28, 35, 42, 25, 31, 45, 38, 29, 33, 40,
                  27, 36, 44, 30, 39, 26, 34, 41, 32, 37]

p25 = np.percentile(delivery_times, 25)
p50 = np.percentile(delivery_times, 50)
p75 = np.percentile(delivery_times, 75)

print("25th Percentile:", p25)
print("50th Percentile:", p50)
print("75th Percentile:", p75)
```

**Explanation:**  
- 25th percentile (Q1) means 25% of delivery times are at or below this value.
- 50th percentile (Q2) is the median.
- 75th percentile (Q3) means 75% of delivery times are at or below this value.

---

## Task 2: Divide IPL Player Scores into Quartiles

```python
import numpy as np

scores = [12, 45, 67, 23, 89, 54, 76, 34, 90, 41,
          55, 72, 18, 63, 81, 39, 95, 28, 50, 70]

q1 = np.quantile(scores, 0.25)
q2 = np.quantile(scores, 0.50)
q3 = np.quantile(scores, 0.75)

print("Q1 (25th Percentile):", q1)
print("Q2 (Median):", q2)
print("Q3 (75th Percentile):", q3)
```

---

## Task 3: Calculate Interquartile Range (IQR)

```python
import numpy as np

steps = [
    6500, 7200, 8100, 5600, 9000, 7500, 6800,
    10200, 8400, 7300, 6200, 7900, 8800, 9500,
    7100, 6600, 8200, 9100, 7600, 6900, 8500,
    7800, 6400, 9700, 8300, 7400, 7000, 8900,
    9200, 6100, 8000
]

q1 = np.percentile(steps, 25)
q3 = np.percentile(steps, 75)
iqr = q3 - q1

print("Q1:", q1)
print("Q3:", q3)
print("IQR:", iqr)
```

**Explanation:**  
IQR = Q3 - Q1. It represents the spread of the middle 50% of daily step counts.

- A smaller IQR means the daily activity is more consistent.
- A larger IQR means the daily activity varies more from day to day.

---

## Task 4: Detect Swiggy Order Amount Outliers Using IQR

```python
import numpy as np

def detect_outliers(order_amounts):
    q1 = np.percentile(order_amounts, 25)
    q3 = np.percentile(order_amounts, 75)
    iqr = q3 - q1

    lower_limit = q1 - 1.5 * iqr
    upper_limit = q3 + 1.5 * iqr

    outliers = [
        amount for amount in order_amounts
        if amount < lower_limit or amount > upper_limit
    ]

    print("Q1:", q1)
    print("Q3:", q3)
    print("IQR:", iqr)
    print("Lower Bound:", lower_limit)
    print("Upper Bound:", upper_limit)
    print("Outlier Values:", outliers)

    return outliers


order_amounts = [
    220, 350, 180, 450, 300, 275, 390, 420, 250, 310,
    280, 360, 330, 290, 410, 260, 340, 380, 295, 320,
    1500, 175
]

detect_outliers(order_amounts)
```

**Explanation:**  
The IQR method identifies values outside:

- Lower Bound = Q1 - 1.5 × IQR
- Upper Bound = Q3 + 1.5 × IQR

Any order amount outside these limits is treated as an outlier.

---

## Task 5: Boxplot of Weekly Screen Time

```python
import matplotlib.pyplot as plt

screen_time = [28, 32, 30, 35, 31, 29, 33, 50]

plt.boxplot(
    screen_time,
    patch_artist=True,
    showfliers=True
)

plt.xlabel("Weeks")
plt.ylabel("Screen Time (Hours)")
plt.title("Weekly Screen Time - Past 8 Weeks")

plt.show()
```

**Explanation:**  
The boxplot displays the distribution of weekly screen time. The points outside the whiskers represent potential outliers. In this example, 50 hours may appear as an unusually high screen-time value.

---

## Conclusion

This assignment demonstrates how NumPy can be used to calculate percentiles, quartiles, and IQR, and how the IQR method can identify outliers. Matplotlib boxplots provide a visual way to understand data distribution and detect unusual observations.
