```python
import numpy as np
import matplotlib.pyplot as plt

# --- 1. Visualize "Line Segment Above Graph" ---

def plot_function_and_segment(ax, func, x_points, label, is_convex=None):
    x_vals = np.linspace(x_points[0] - 1, x_points[1] + 1, 400)
    y_vals = func(x_vals)
    ax.plot(x_vals, y_vals, label=label, color='blue')

    # Pick two points on the function's graph
    x1, x2 = x_points
    y1, y2 = func(x1), func(x2)

    # Plot the two points
    ax.plot([x1, x2], [y1, y2], 'o', color='red', markersize=8)

    # Plot the line segment connecting the two points
    segment_x = np.linspace(x1, x2, 100)
    segment_y = (segment_x - x1) / (x2 - x1) * (y2 - y1) + y1
    ax.plot(segment_x, segment_y, '--', color='red', label='Line segment')

    ax.set_title(f'{label} ({"Convex" if is_convex else "Non-Convex"})')
    ax.set_xlabel('x')
    ax.set_ylabel('f(x)')
    ax.grid(True)
    ax.legend()
    ax.set_ylim(min(y_vals)-1, max(y_vals)+1) # Adjust y-limits

# Define functions
def f_convex(x):
    return x**2

def f_non_convex(x):
    return -x**2

def f_sin(x):
    return np.sin(x)

# Create subplots for line segment visualization
fig1, axes1 = plt.subplots(1, 3, figsize=(18, 5))

# Convex function: x^2
plot_function_and_segment(axes1[0], f_convex, [-2, 2], '$f(x) = x^2$', is_convex=True)

# Non-convex function: -x^2 (concave)
plot_function_and_segment(axes1[1], f_non_convex, [-2, 2], '$f(x) = -x^2$', is_convex=False)

# Non-convex function: sin(x)
plot_function_and_segment(axes1[2], f_sin, [0, np.pi], '$f(x) = \sin(x)$', is_convex=False)

fig1.suptitle("Visualization of 'Line Segment Above/On Graph' for Functions", fontsize=16)
plt.tight_layout(rect=[0, 0.03, 1, 0.95])
plt.show()

# --- 2. Visualize Epigraph ---

def plot_epigraph(ax, func, x_range, label, is_convex=None):
    x_vals = np.linspace(x_range[0], x_range[1], 400)
    y_func_vals = func(x_vals)

    # Plot the function graph
    ax.plot(x_vals, y_func_vals, color='blue', label=label)

    # Shade the epigraph (area above the function)
    # We create a polygon that represents the shaded area
    x_shade = np.concatenate(([x_vals[0]], x_vals, [x_vals[-1]]))
    y_shade = np.concatenate(([max(y_func_vals) + 2], y_func_vals, [max(y_func_vals) + 2])) # Go high enough
    ax.fill_between(x_vals, y_func_vals, y2=ax.get_ylim()[1], color='lightblue', alpha=0.5, label='Epigraph')


    # Pick two points in the epigraph and draw a connecting line
    # For visualization, let's pick points well above the curve
    if is_convex:
        # For convex, ensure points are clearly in the epigraph
        p1_x, p1_y = -1.5, f_convex(-1.5) + 1.5 # 1.5 units above curve
        p2_x, p2_y = 1.5, f_convex(1.5) + 1.5
    else: # For non-convex, illustrate how the line might leave the "valid" epigraph region
        p1_x, p1_y = -1.5, f_non_convex(-1.5) + 0.5 # 0.5 units above curve for -x^2, adjusted
        p2_x, p2_y = 1.5, f_non_convex(1.5) + 0.5


    ax.plot([p1_x, p2_x], [p1_y, p2_y], 'o', color='red', markersize=8) # Plot points
    ax.plot([p1_x, p2_x], [p1_y, p2_y], '--', color='red', label='Line between points in epigraph') # Plot segment

    ax.set_title(f'{label} (Epigraph - {"Convex" if is_convex else "Non-Convex"})')
    ax.set_xlabel('x')
    ax.set_ylabel('y')
    ax.grid(True)
    ax.legend()
    ax.set_ylim(min(y_func_vals) - 1, max(y_func_vals) + 2) # Adjust y-limits

# Create subplots for epigraph visualization
fig2, axes2 = plt.subplots(1, 2, figsize=(14, 6))

# Convex function: x^2 with its epigraph
plot_epigraph(axes2[0], f_convex, [-3, 3], '$f(x) = x^2$', is_convex=True)

# Non-convex function: -x^2 with its epigraph
plot_epigraph(axes2[1], f_non_convex, [-3, 3], '$f(x) = -x^2$', is_convex=False)


fig2.suptitle("Visualization of Epigraph Convexity", fontsize=16)
plt.tight_layout(rect=[0, 0.03, 1, 0.95])
plt.show()
```