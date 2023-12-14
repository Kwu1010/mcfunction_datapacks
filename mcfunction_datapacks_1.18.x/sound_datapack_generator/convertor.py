"""
Index   ID          Note
0   -   0.5     -   F#
1   -   0.53    -   G
2   -   0.56    -   G#
3   -   0.59    -   A
4   -   0.63    -   A#
5   -   0.67    -   B
6   -   0.71    -   C
7   -   0.75    -   C#
8   -   0.79    -   D
9   -   0.84    -   D#
10  -   0.89    -   E
11  -   0.94    -   F
12  -   1.0     -   F#
13  -   1.06    -   G
14  -   1.12    -   G#
15  -   1.19    -   A
16  -   1.26    -   A#
17  -   1.33    -   B
18  -   1.41    -   C
19  -   1.5     -   C#
20  -   1.59    -   D
21  -   1.68    -   D#
22  -   1.78    -   E
23  -   1.89    -   F
24  -   2.0     -   F#
"""

import tkinter
from tkinter import scrolledtext, END
from PIL import ImageTk, Image

"""Initialize window"""
root = tkinter.Tk()
root.title("MC Note To Code Converter")
# root.iconbitmap('fnf.ico')
root.geometry("1500x600")
root.resizable(0,0)

"""Initialize frames"""
button_frame = tkinter.LabelFrame(root)
button_frame.pack(padx=2, pady=5)
button_frame.place(x=10, y=10)
display_frame = tkinter.LabelFrame(root)
display_frame.pack(padx=2, pady=(5, 20))
display_frame.place(x=10, y=300)
value_frame = tkinter.LabelFrame(root)
value_frame.pack(padx=2, pady=5)
value_frame.place(x=925, y=10)
instrument_frame = tkinter.LabelFrame(root)
instrument_frame.pack(padx=2, pady=5)
instrument_frame.place(x=10, y=100)
time_frame = tkinter.LabelFrame(root)
time_frame.pack(padx=2, pady=5)
time_frame.place(x=10, y=155)
setting_frame = tkinter.LabelFrame(root)
setting_frame.pack(padx=2, pady=5)
setting_frame.place(x=650, y=155)

"""Set fonts and colors"""
root_color = "#505050"
frame_color = "#aaaaaa"
output_color = "#ffffff"
button_font = ('Arial', 18)
display_font = ('Arial', 15)
value_font = ('Arial', 15)
root.config(bg=root_color)
button_frame.config(bg=frame_color)
display_frame.config(bg=frame_color)
value_frame.config(bg=frame_color)
instrument_frame.config(bg=frame_color)
time_frame.config(bg=frame_color)
setting_frame.config(bg=frame_color)

"""Initialize input and output display"""
display = tkinter.scrolledtext.ScrolledText(display_frame, width=131, height=11, bg=output_color, font=display_font)
display.pack(padx=5, pady=5)

"""Define functions"""

def key0():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "0.5")

def key1():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "0.53")

def key2():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "0.56")

def key3():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "0.59")

def key4():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "0.63")

def key5():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "0.67")

def key6():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "0.71")

def key7():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "0.75")

def key8():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "0.79")

def key9():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "0.84")

def key10():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "0.89")

def key11():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "0.94")

def key12():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "1.0")

def key13():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "1.06")

def key14():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "1.12")

def key15():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "1.19")

def key16():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "1.26")

def key17():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "1.33")

def key18():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "1.41")

def key19():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "1.5")

def key20():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "1.59")

def key21():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "1.68")

def key22():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "1.78")

def key23():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "1.89")

def key24():
    keyvalue_button.delete("0", END)
    keyvalue_button.insert("0", "2.0")

def string_bass():
    instrumentvalue_button.delete("0", END)
    instrumentvalue_button.insert("0", "block.note_block.bass")

def snare():
    instrumentvalue_button.delete("0", END)
    instrumentvalue_button.insert("0", "block.note_block.snare")

def hihat():
    instrumentvalue_button.delete("0", END)
    instrumentvalue_button.insert("0", "block.note_block.hat")

def bass_kick():
    instrumentvalue_button.delete("0", END)
    instrumentvalue_button.insert("0", "block.note_block.basedrum")

def glockenspiel():
    instrumentvalue_button.delete("0", END)
    instrumentvalue_button.insert("0", "block.note_block.bell")

def flute():
    instrumentvalue_button.delete("0", END)
    instrumentvalue_button.insert("0", "block.note_block.flute")

def chime():
    instrumentvalue_button.delete("0", END)
    instrumentvalue_button.insert("0", "block.note_block.chime")

def guitar():
    instrumentvalue_button.delete("0", END)
    instrumentvalue_button.insert("0", "block.note_block.guitar")

def xylophone():
    instrumentvalue_button.delete("0", END)
    instrumentvalue_button.insert("0", "block.note_block.xylophone")

def vibraphone():
    instrumentvalue_button.delete("0", END)
    instrumentvalue_button.insert("0", "block.note_block.iron_xylophone")

def cow_bell():
    instrumentvalue_button.delete("0", END)
    instrumentvalue_button.insert("0", "block.note_block.cow_bell")

def didgeridoo():
    instrumentvalue_button.delete("0", END)
    instrumentvalue_button.insert("0", "block.note_block.didgeridoo")

def square_wave():
    instrumentvalue_button.delete("0", END)
    instrumentvalue_button.insert("0", "block.note_block.bit")

def banjo():
    instrumentvalue_button.delete("0", END)
    instrumentvalue_button.insert("0", "block.note_block.banjo")

def electric_piano():
    instrumentvalue_button.delete("0", END)
    instrumentvalue_button.insert("0", "block.note_block.pling")

def harp():
    instrumentvalue_button.delete("0", END)
    instrumentvalue_button.insert("0", "block.note_block.harp")

def increase():
    increment = timeincrement_button.get()
    current = timevalue_button.get()
    if current == "":
        current = increment
    else:
        current = int(current) + int(increment)
    timevalue_button.delete("0", END)
    timevalue_button.insert("0", str(current))

def decrease():
    increment = timeincrement_button.get()
    current = timevalue_button.get()
    if current == "":
        current = 0
    else:
        if (int(current) - int(increment)) > 0:
            current = int(current) - int(increment)
        else:
            current = 0
    timevalue_button.delete("0", END)
    timevalue_button.insert("0", str(current))

def convert():
    note = keyvalue_button.get()
    instrument = instrumentvalue_button.get()
    time = timevalue_button.get()
    file.write("execute as @e[scores={" + song + "time=" + time + ".." + time +
               "}] at @s run playsound minecraft:" + instrument + " master @a ~ ~ ~ 1 " + note + "\n")
    output = "execute as @e[scores={" + song + "time=" + time + ".." + time +\
             "}] at @s run playsound minecraft:" + instrument + " master @a ~ ~ ~ 1 " + note + "\n"
    display.insert("1.0", output)

def next():
    increase()
    convert()

def end():
    increment = timeincrement_button.get()
    time = timevalue_button.get()
    value = str(int(increment) + int(time))
    file.write("tag @a[scores={" + song + "time=" + value + ".." + value + "}] remove " + song)

"""Define buttons"""

keyvalue_button = tkinter.Entry(value_frame, width=35, font=button_font, borderwidth=3)
keyvalue_button.grid(row=1, column=1, padx=5, pady=18)

instrumentvalue_button = tkinter.Entry(value_frame, width=35, font=button_font, borderwidth=3)
instrumentvalue_button.grid(row=2, column=1, padx=5, pady=18)

timevalue_button = tkinter.Entry(value_frame, width=35, font=button_font, borderwidth=3)
timevalue_button.grid(row=3, column=1, padx=5, pady=18)

key0_button = tkinter.Button(button_frame, text=" F#", command=key0)
key0_button.grid(row=1, column=1, padx=5, pady=5)

key1_button = tkinter.Button(button_frame, text=" G ", command=key1)
key1_button.grid(row=2, column=2, padx=5, pady=5)

key2_button = tkinter.Button(button_frame, text=" G#", command=key2)
key2_button.grid(row=1, column=3, padx=5, pady=5)

key3_button = tkinter.Button(button_frame, text=" A ", command=key3)
key3_button.grid(row=2, column=4, padx=5, pady=5)

key4_button = tkinter.Button(button_frame, text=" A#", command=key4)
key4_button.grid(row=1, column=5, padx=5, pady=5)

key5_button = tkinter.Button(button_frame, text=" B ", command=key5)
key5_button.grid(row=2, column=6, padx=5, pady=5)

key6_button = tkinter.Button(button_frame, text=" C ", command=key6)
key6_button.grid(row=2, column=7, padx=5, pady=5)

key7_button = tkinter.Button(button_frame, text=" C#", command=key7)
key7_button.grid(row=1, column=8, padx=5, pady=5)

key8_button = tkinter.Button(button_frame, text=" D ", command=key8)
key8_button.grid(row=2, column=9, padx=5, pady=5)

key9_button = tkinter.Button(button_frame, text=" D#", command=key9)
key9_button.grid(row=1, column=10, padx=5, pady=5)

key10_button = tkinter.Button(button_frame, text=" E ", command=key10)
key10_button.grid(row=2, column=11, padx=5, pady=5)

key11_button = tkinter.Button(button_frame, text=" F ", command=key11)
key11_button.grid(row=2, column=12, padx=5, pady=5)

key12_button = tkinter.Button(button_frame, text=" F#", command=key12)
key12_button.grid(row=1, column=13, padx=5, pady=5)

key13_button = tkinter.Button(button_frame, text=" G ", command=key13)
key13_button.grid(row=2, column=14, padx=5, pady=5)

key14_button = tkinter.Button(button_frame, text=" G#", command=key14)
key14_button.grid(row=1, column=15, padx=5, pady=5)

key15_button = tkinter.Button(button_frame, text=" A ", command=key15)
key15_button.grid(row=2, column=16, padx=5, pady=5)

key16_button = tkinter.Button(button_frame, text=" A#", command=key16)
key16_button.grid(row=1, column=17, padx=5, pady=5)

key17_button = tkinter.Button(button_frame, text=" B ", command=key17)
key17_button.grid(row=2, column=18, padx=5, pady=5)

key18_button = tkinter.Button(button_frame, text=" C ", command=key18)
key18_button.grid(row=2, column=19, padx=5, pady=5)

key19_button = tkinter.Button(button_frame, text=" C#", command=key19)
key19_button.grid(row=1, column=20, padx=5, pady=5)

key20_button = tkinter.Button(button_frame, text=" D ", command=key20)
key20_button.grid(row=2, column=21, padx=5, pady=5)

key21_button = tkinter.Button(button_frame, text=" D#", command=key21)
key21_button.grid(row=1, column=22, padx=5, pady=5)

key22_button = tkinter.Button(button_frame, text=" E ", command=key22)
key22_button.grid(row=2, column=23, padx=5, pady=5)

key23_button = tkinter.Button(button_frame, text=" F ", command=key23)
key23_button.grid(row=2, column=24, padx=5, pady=5)

key24_button = tkinter.Button(button_frame, text=" F#", command=key24)
key24_button.grid(row=1, column=25, padx=5, pady=5)

stringbass_button = tkinter.Button(instrument_frame, text="Bass", command=string_bass)
stringbass_button.grid(row=1, column=1, padx=5, pady=5)

snare_button = tkinter.Button(instrument_frame, text="Snare", command=snare)
snare_button.grid(row=1, column=2, padx=5, pady=5)

hihat_button = tkinter.Button(instrument_frame, text="HiHat", command=hihat)
hihat_button.grid(row=1, column=3, padx=5, pady=5)

basskick_button = tkinter.Button(instrument_frame, text="Kick", command=bass_kick)
basskick_button.grid(row=1, column=4, padx=5, pady=5)

glockenspiel_button = tkinter.Button(instrument_frame, text="Bell", command=glockenspiel)
glockenspiel_button.grid(row=1, column=5, padx=5, pady=5)

flute_button = tkinter.Button(instrument_frame, text="Flute", command=flute)
flute_button.grid(row=1, column=6, padx=5, pady=5)

chime_button = tkinter.Button(instrument_frame, text="Chime", command=chime)
chime_button.grid(row=1, column=7, padx=5, pady=5)

guitar_button = tkinter.Button(instrument_frame, text="Guitar", command=guitar)
guitar_button.grid(row=1, column=8, padx=5, pady=5)

xylophone_button = tkinter.Button(instrument_frame, text="Xylophone", command=xylophone)
xylophone_button.grid(row=1, column=9, padx=5, pady=5)

vibraphone_button = tkinter.Button(instrument_frame, text="Vibraphone", command=vibraphone)
vibraphone_button.grid(row=1, column=10, padx=5, pady=5)

cowbell_button = tkinter.Button(instrument_frame, text="Cowbell", command=cow_bell)
cowbell_button.grid(row=1, column=11, padx=5, pady=5)

didgeridoo_button = tkinter.Button(instrument_frame, text="Didgeridoo", command=didgeridoo)
didgeridoo_button.grid(row=1, column=12, padx=5, pady=5)

squarewave_button = tkinter.Button(instrument_frame, text="Wave", command=square_wave)
squarewave_button.grid(row=1, column=13, padx=5, pady=5)

banjo_button = tkinter.Button(instrument_frame, text="Banjo", command=banjo)
banjo_button.grid(row=1, column=14, padx=5, pady=5)

epiano_button = tkinter.Button(instrument_frame, text="E-Piano", command=electric_piano)
epiano_button.grid(row=1, column=15, padx=5, pady=5)

harp_button = tkinter.Button(instrument_frame, text="Harp", command=harp)
harp_button.grid(row=1, column=16, padx=5, pady=5)

timeincrement_button = tkinter.Entry(time_frame, width=35, font=button_font, borderwidth=3, text="")
timeincrement_button.grid(row=1, column=1, padx=5, pady=15)

increase_button = tkinter.Button(time_frame, text="  <-  ", command=decrease)
increase_button.grid(row=1, column=2, padx=5, pady=5)

decrease_button = tkinter.Button(time_frame, text="  ->  ", command=increase)
decrease_button.grid(row=1, column=3, padx=5, pady=5)

convert_button = tkinter.Button(setting_frame, text="Convert", command=convert)
convert_button.grid(row=1, column=1, padx=5, pady=5)

next_button = tkinter.Button(setting_frame, text="Next", command=next)
next_button.grid(row=1, column=2, padx=5, pady=5)

end_button = tkinter.Button(setting_frame, text="Exit", command=end)
end_button.grid(row=1, column=3, padx=5, pady=5)

def main():
    global song
    global file
    song = input("Enter name: ")
    file = open(song + ".txt", "w")
    file.write("scoreboard objectives add " + song + "time dummy\n")
    file.write("scoreboard players set @e[tag=!" + song + "] " + song + "time 0\n")
    file.write("scoreboard players add @e[tag=" + song + "] " + song + "time 1\n")
    root.mainloop()

if __name__ == "__main__":
    main()