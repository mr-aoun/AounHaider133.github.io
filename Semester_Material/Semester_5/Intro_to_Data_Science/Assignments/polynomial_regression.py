import matplotlib.pyplot as plt
import numpy as np

x = [x for x in range(0,7)]
y = [4,2,4,5,6,7,2]

x2 = np.array([5,7,8,7,2,17,2,9,4,11,12,9,6])
y2 = np.array([99,86,87,88,111,86,103,87,94,78,77,85,86])

#mec = marker edge color
#ms  = marker size
#mfc = marker face color
#marker | line | color
#ls  = linestyle
#lw  = line width
plt.subplot(2,3,1)
plt.plot(x,y,'o-y',mec = 'r',ms=5,mfc='k',lw=8)
plt.grid(color = "green",ls="--",lw = 2)
plt.xlabel("Credit hours",loc = "center")
plt.ylabel("Labs")
plt.title("Data_Science_Lab",fontdict = {'family':'serif','color':'darkred','size':10})

plt.subplot(2,3,2)
plt.scatter(x2,y2,color="hotpink")
plt.plot(x,y)
plt.grid(color = "blue",ls="--",lw = 2)
plt.xlabel("GPA",loc = "center")
plt.ylabel("Study")
plt.title("Terminal_Result",fontdict = {'family':'serif','color':'darkred','size':10})

plt.subplot(2,3,3)
plt.hist(np.random.normal(170,10,250))

plt.subplot(2,3,4)
plt.bar(['Aoun','Saad','Saram','Adil','Dawood'],[23,67,89,54,23],color="orange",width = 0.7)

plt.subplot(2,3,5)
subjects = [20,40,5,50,43]
mycolors = ["yellow","hotpink","black","red","green"]
mylabels = ["DIP","CC","ICT","ML","CV"]
plt.pie(subjects,startangle = 90)
plt.legend(title="Subject List",labels = mylabels)
plt.show()