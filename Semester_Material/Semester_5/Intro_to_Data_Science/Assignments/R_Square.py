import sys
from scipy import stats

age = [20, 22, 32, 40, 50, 36, 47]
income = [100000, 120000, 80000, 350000, 50000, 150000, 250000]

slope, intercept, r, p, std_err = stats.linregress(age, income)

# Create a function to calculate the predicted income for a given age
def myfunc(x):
    return slope * x + intercept

# Target ages for which you want to calculate r values
target_ages = [15, 55, 65]

# Calculate r values for the predicted income and the respective actual income values
predicted_incomes = [myfunc(age) for age in target_ages]
actual_incomes = [myfunc(age) for age in target_ages]
r_values = [stats.pearsonr(predicted_incomes, actual_incomes)[0] for _ in target_ages]

# Print the r values
for i in range(len(target_ages)):
    print(f"R value for age {target_ages[i]}: {r_values[i]}")
