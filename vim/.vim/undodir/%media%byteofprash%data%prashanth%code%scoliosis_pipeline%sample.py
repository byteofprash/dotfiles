Vim�UnDo� � &�Mz�s��n3edt�j�1��w?C��o���              4      -       -   -   -    \\3�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             \Z�    �                   5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       \Z�L     �                !Data2 = map(scipy.cos, DataRange)�                !Data1 = map(scipy.sin, DataRange)�                )DataRange = map(scipy.deg2rad, DataRange)�                DataRange = range(0, 360)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       \Z�W     �               pyplot.plot(Data1)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       \Z�X     �                5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                V       \Z�a     �               
plt.plot()5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                V       \Z�f     �               plt.plot(1,2,3,4,5,6)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       \Z�h     �               plt.plot([1,2,3,4,5,6)5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                V       \Z�m     �               pyplot.plot(Data1)5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                V       \Z�y    �      	          5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             \Z��    �                5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                         !       v���    \Z��     �      	         !Data2 = 1 + np.sin(2 * np.pi * t)   toggle = True5�_�                           ����                                                                                                                                                                                                                                                                                                                                         !       v���    \Z��     �      
         Data2 = toggle = True5�_�                           ����                                                                                                                                                                                                                                                                                                                                         !       v���    \Z��     �      	         Data2 = 5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                         !       v���    \Z��     �      	         
Data2 = []5�_�                            ����                                                                                                                                                                                                                                                                                                                                         !       v���    \Z��     �               ## Data1 = map(scipy.sin, DataRange)5�_�                       !    ����                                                                                                                                                                                                                                                                                                                                         !       v���    \Z��     �               !Data1 = map(scipy.sin, DataRange)5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                         !       v���    \Z�    �               
Data1 = []5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             \Z�     �               plt.plot([1,2,3,4,5,6])5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             \Z�     �               lt.plot([1,2,3,4,5,6])5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             \Z�     �               t.plot([1,2,3,4,5,6])5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             \Z�    �               .plot([1,2,3,4,5,6])5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       \Z�     �                    event.canvas.draw()�                 �                -        event.canvas.figure.gca().plot(Data2)�                	    else:�                -        event.canvas.figure.gca().plot(Data1)�                    if toggle:�                 �                    event.canvas.figure.clear()�                    toggle = not toggle�                 �                    global toggle�   
             def onclick(event):5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       \Z�     �                5fig.canvas.mpl_connect('button_press_event', onclick)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       \Z�'     �               #pyplot.plot(Data1)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       \Z�2     �             �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       \Z�4    �                pyplot.plot(Data1)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       \Z�T    �              �              5�_�                            ����                                                                                                                                                                                                                                                                                                                            !                      v        \Z�P     �               !   import scipy   from matplotlib import pyplot   import numpy as np   # DataRange = range(0, 360)   +# DataRange = map(scipy.deg2rad, DataRange)   Data1 = [10,11,12,1,2]   ## Data2 = map(scipy.cos, DataRange)   Data2 = [1,2,3,4,5]   toggle = True       # def onclick(event):   #     global toggle       #     toggle = not toggle   !#     event.canvas.figure.clear()       #     if toggle:   /#         event.canvas.figure.gca().plot(Data1)   #     else:   /#         event.canvas.figure.gca().plot(Data2)       #     event.canvas.draw()       fig = pyplot.figure()   7# fig.canvas.mpl_connect('button_press_event', onclick)       pyplot.plot([1,2,3,4,5,6])   pyplot.plot(Data1)   pyplot.show()   pyplot.plot(Data2)   pyplot.show()        5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  v        \Z�Q   	 �                   5�_�                             ����                                                                                                                                                                                                                                                                                                                                       '           V        \\3     �              '   import numpy as np   import matplotlib.pyplot as plt   %from matplotlib.widgets import Button       freqs = np.arange(2, 20, 3)       fig, ax = plt.subplots()   plt.subplots_adjust(bottom=0.2)   t = np.arange(0.0, 1.0, 0.001)   s = np.sin(2*np.pi*freqs[0]*t)   l, = plt.plot(t, s, lw=2)           class Index(object):       ind = 0           def next(self, event):           self.ind += 1   !        i = self.ind % len(freqs)   *        ydata = np.sin(2*np.pi*freqs[i]*t)           l.set_ydata(ydata)           plt.draw()           def prev(self, event):           self.ind -= 1   !        i = self.ind % len(freqs)   *        ydata = np.sin(2*np.pi*freqs[i]*t)           l.set_ydata(ydata)           plt.draw()       callback = Index()   *axprev = plt.axes([0.7, 0.05, 0.1, 0.075])   +axnext = plt.axes([0.81, 0.05, 0.1, 0.075])   bnext = Button(axnext, 'Next')   bnext.on_clicked(callback.next)   "bprev = Button(axprev, 'Previous')   bprev.on_clicked(callback.prev)       
plt.show()5�_�      !                       ����                                                                                                                                                                                                                                                                                                                                                  V        \\3     �                   5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                                                  V        \\3     �                def onclick(event):5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                                                  V        \\3     �                 5�_�   "   %           #           ����                                                                                                                                                                                                                                                                                                                                                  V        \\32   
 �         	       5�_�   #   &   $       %           ����                                                                                                                                                                                                                                                                                                                                                             \\3@     �         
    5�_�   %   '           &           ����                                                                                                                                                                                                                                                                                                                                                             \\3@    �                5�_�   &   (           '      ;    ����                                                                                                                                                                                                                                                                                                                                                             \\3U    �   
              ;cid = fig.canvas.mpl_connect('button_press_event', onclick)5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                                                             \\3k     �   
            ;cid = fig.canvas.mpl_connect('button_press_event', onclick)5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                                                             \\3l    �   
            )cid = fig.canvas.mpl_connect('', onclick)5�_�   )   +           *           ����                                                                                                                                                                                                                                                                                                                                      	          V       \\3�     �                def onclick(event):   A    print('%s click: button=%d, x=%d, y=%d, xdata=%f, ydata=%f' %   B          ('double' if event.dblclick else 'single', event.button,   7           event.x, event.y, event.xdata, event.ydata))5�_�   *   ,           +           ����                                                                                                                                                                                                                                                                                                                                                V       \\3�     �      
          5�_�   +   -           ,   
   4    ����                                                                                                                                                                                                                                                                                                                                                V       \\3�    �   	            :cid = fig.canvas.mpl_connect('key_release_event', onclick)5�_�   ,               -           ����                                                                                                                                                                                                                                                                                                                                         
       V   7    \\3�    �                def on_key(event):   =    print('you pressed', event.key, event.xdata, event.ydata)           9cid = fig.canvas.mpl_connect('key_release_event', on_key)   
plt.show()5�_�   #           %   $           ����                                                                                                                                                                                                                                                                                                                                                             \\3>     �         
    �         
   '   import numpy as np   import matplotlib.pyplot as plt   %from matplotlib.widgets import Button       freqs = np.arange(2, 20, 3)       fig, ax = plt.subplots()   plt.subplots_adjust(bottom=0.2)   t = np.arange(0.0, 1.0, 0.001)   s = np.sin(2*np.pi*freqs[0]*t)   l, = plt.plot(t, s, lw=2)           class Index(object):       ind = 0           def next(self, event):           self.ind += 1   !        i = self.ind % len(freqs)   *        ydata = np.sin(2*np.pi*freqs[i]*t)           l.set_ydata(ydata)           plt.draw()           def prev(self, event):           self.ind -= 1   !        i = self.ind % len(freqs)   *        ydata = np.sin(2*np.pi*freqs[i]*t)           l.set_ydata(ydata)           plt.draw()       callback = Index()   *axprev = plt.axes([0.7, 0.05, 0.1, 0.075])   +axnext = plt.axes([0.81, 0.05, 0.1, 0.075])   bnext = Button(axnext, 'Next')   bnext.on_clicked(callback.next)   "bprev = Button(axprev, 'Previous')   bprev.on_clicked(callback.prev)       
plt.show()5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       \Z�)     �               pyplot.plot(Data15��