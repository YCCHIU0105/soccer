# -*- coding: utf-8 -*-
"""
Created on Fri Nov  3 19:55:08 2023

@author: jains
"""

import numpy as np
import matplotlib.pyplot as plt

import sys

plt.style.use('ggplot')


a=sys.argv
#a=["rad.py",'2', 3, 4, 5,":", 3.3, 3, 1]
#a=["rad.py",'1', 3, 4, 5]
values=[]
values1=[]
feature = ['  Attack','Defence','Team_work']
flag=False
#print("===>",len(a),a)
if a[1]=='1':
    #print("hit 1")
    for i in range(2,len(a),1):
        #print(a[i])
        values.append(float(a[i]))
    #print(len(values))
    #values=np.concatenate((values,[values[0]]))
    
elif a[1]=='2':    
    #print("hit 2")
    for i in range(2,len(a),1):
        #print(i)
        if a[i] == ":":
            flag=True
        else:
            if flag==False:
                values.append(float(a[i]))
            else:
                values1.append(float(a[i]))

#values=[4,4,1]


#print(len(values))
N = len(values)

angles=np.linspace(0, 2*np.pi, N, endpoint=False)

values=np.concatenate((values,[values[0]]))

angles=np.concatenate((angles,[angles[0]]))

fig=plt.figure()
ax = fig.add_subplot(111, polar=True)
ax.plot(angles, values, 'o-', linewidth=2)
# 填充颜色
ax.fill(angles, values, alpha=0.25,label='Team A')
#a=[0,0]
if a[1]=='2':
    values1=np.concatenate((values1,[values1[0]]))
    ax.plot(angles, values1, 'x-', linewidth=2)    
    ax.fill(angles, values1, alpha=0.75,label='Team B')
#print(feature)
#print(len(angles), len(feature))
plt.xticks(angles[:-1],feature)

ax.set_ylim(0,6)

plt.title('Performance')
plt.legend(loc = 'lower right')
ax.grid(True)
plt.savefig("rad.tif",format='tiff',dpi=600 , pil_kwargs={"compression": "tiff_lzw"})
#plt.show()
#plt.show()