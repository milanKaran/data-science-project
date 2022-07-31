from tkinter import *
from tkinter import ttk

root = Tk()
root.title(' testing')
root.geometry('500x400')

# Create a Main Frame
main_frame = Frame(root)
main_frame.pack(fill=BOTH, expand=1)

# Create a Canvas
my_canvas = Canvas(main_frame)
my_canvas.pack(side=LEFT, fill=BOTH, expand=1)

# add a scrollbar to the canvas
my_scrollbar = ttk.Scrollbar(main_frame, orient=VERTICAL, command=my_canvas.yview)
my_scrollbar.pack(side=RIGHT, fill=Y)

# Configure the canvas
my_canvas.configure(yscrollcommand=my_scrollbar.set)
my_canvas.bind('<Configure>', lambda e: my_canvas.configure(scrollregion=my_canvas.bbox('all')))

# Create another Frame inside Canvas
second_frame = Frame(my_canvas)

# Add that new Frame to a window in the Canvas
my_canvas.create_window((0, 0), window=second_frame, anchor='nw')

# Add the buttons
for button in range(100):
    Button(second_frame, text='Button ' + str(button)).grid(row=button, column=0, pady=10, padx=10)

root.mainloop()
