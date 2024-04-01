# VHS documentation
#
# Output:
#   Output <path>.gif               Create a GIF output at the given <path>
#   Output <path>.mp4               Create an MP4 output at the given <path>
#   Output <path>.webm              Create a WebM output at the given <path>
#
# Settings:
#   Set FontSize <number>           Set the font size of the terminal
#   Set FontFamily <string>         Set the font family of the terminal
#   Set Height <number>             Set the height of the terminal
#   Set Width <number>              Set the width of the terminal
#   Set LetterSpacing <float>       Set the font letter spacing (tracking)
#   Set LineHeight <float>          Set the font line height
#   Set Theme <string>              Set the theme of the terminal (JSON)
#   Set Padding <number>            Set the padding of the terminal
#   Set Framerate <number>          Set the framerate of the recording
#   Set PlaybackSpeed <float>       Set the playback speed of the recording
#
# Sleep:
#   Sleep <time>                    Sleep for a set amount of <time> in seconds
#
# Type:
#   Type[@<time>] "<characters>"    Type <characters> into the terminal with a
#                                   <time> delay between each character
#
# Keys:
#   Backspace[@<time>] [number]     Press the Backspace key
#   Down[@<time>] [number]          Press the Down key
#   Enter[@<time>] [number]         Press the Enter key
#   Space[@<time>] [number]         Press the Space key
#   Tab[@<time>] [number]           Press the Tab key
#   Left[@<time>] [number]          Press the Left Arrow key
#   Right[@<time>] [number]         Press the Right Arrow key
#   Up[@<time>] [number]            Press the Up Arrow key
#   Down[@<time>] [number]          Press the Down Arrow key
#   Ctrl+<key>                      Press the Control key + <key> (e.g. Ctrl+C)
#
# Display:
#   Hide                            Hide the subsequent commands from the output
#   Show                            Show the subsequent commands in the output

Require nvim

Output normal.gif

Set FontSize 24
Set FontFamily "Hack Nerd Font"
Set Width 1600
Set Height 900

Hide
Type "nvim -n woods.txt"
Enter
Type ':lua explain({"Without leaving normal mode,", "we can rearrange the lines", "by moving to the line", "deleting with dd", "then moving to a new line", "and pasting with p"}, "Normal mode", 6000)'
Enter
Type ':'
Escape
Show
Sleep 6
Hide
Type ':lua explain("GddggP20Gddggp", "Move, cut, move, paste", 1000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type "GddggP20Gddggp"
Sleep 1

Hide
Type ':lua explain("11Gdd3Gp21Gdd4Gp", "Cruelty-free", 1000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type "11Gdd3Gp21Gdd4Gp"
Sleep 1

Hide
Type ':lua explain("4jdd4kpGkdd6Gp", "(No mice were used)", 1000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type "4jdd4kpGkdd6Gp"
Sleep 1

Hide
Type ':lua explain("}ddkP7jdd8Gp", "Move, cut, move, paste", 1000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type "}ddkP7jdd8Gp"
Sleep 1

Hide
Type ':lua explain("Gdd9Gp4jdd4kp", "Move, cut, move, paste", 1000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type "Gdd9Gp4jdd4kp"
Sleep 1

Hide
Type ':lua explain("GddMpjjddkkp", "Move, cut, move, paste", 1000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type "GddMpjjddkkp"
Sleep 1

Hide
Type ':lua explain("Gkdd9kp3jdd3kp", "Move, cut, move, paste", 1000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type "Gkdd9kp3jdd3kp"
Sleep 1

Hide
Type ':lua explain("6jdd6kp5j2dd5kp", "Move, cut, move, paste", 1000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type "6jdd6kp5j2dd5kp"
Sleep 1

Hide
Type ':lua explain("2jddGp2kdd", "Move, cut, move, paste", 1000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type "2jddGp2kdd"
Sleep 1

Sleep 10

