import numpy
from sklearn.metrics import r2_score

age = [20,22,32,40,50,36,47]
savings = [50000,40000,5000,10000,0,30000,8000]

predict = numpy.poly1d(numpy.polyfit(age,savings,3))

new_ages = [25,30,35,40,45]
predicted_savings = predict(new_ages)

for i,j in zip(new_ages,predicted_savings):
 print(f"For age:{i}, savings:{j}")