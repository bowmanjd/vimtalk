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

Output movement.gif

Set FontSize 24
Set FontFamily "Hack Nerd Font"
Set Width 1600
Set Height 900

Hide
Type "nvim -n marriage.txt"
Enter
Show
Sleep 1
Hide
Type ':lua explain("jj","j moves down a line", 3000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type "j"
Sleep 1
Type "j"
Sleep 1
Hide
Type ':lua explain("kk", "k moves up", 3000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type "k"
Sleep 1
Type "k"
Sleep 1
Hide
Type ':lua explain("ll", "l moves right", 3000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type "l"
Sleep 1
Type "l"
Sleep 1
Hide
Type ':lua explain("hh", "h moves left", 3000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type "h"
Sleep 1
Type "h"
Sleep 1
Hide
Type ':lua explain({"<Right><Down><Left><Up> ", "<Right><Down><Left><Up>"}, "Arrow keys work fine too", 6000)'
Enter
Type ':'
Escape
Show
Sleep 1
Right
Sleep 1
Down
Sleep 1
Left
Sleep 1
Up
Sleep 1
Right
Sleep 1
Down
Sleep 1
Left
Sleep 1
Up
Sleep 1
Hide
Type ':lua explain("6j", "Repeat by typing number before motion", 2000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type '6'
Sleep 1
Type 'j'
Sleep 1
Hide
Type ':lua explain("w", "Move to next word", 2000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type 'w'
Sleep 1
Hide
Type ':lua explain("b", "Move to previous word", 2000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type 'b'
Sleep 1

Hide
Type ':lua explain("fN", "f moves to character", 2000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type 'f'
Sleep 1
Type 'N'
Sleep 1

Hide
Type ':lua explain("t.", "t moves before character", 2000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type 't'
Sleep 1
Type '.'
Sleep 1

Hide
Type ':lua explain(";", "; repeats last f or t", 3000)'
Enter
Type ':'
Escape
Show
Sleep 2
Type ';'
Sleep 2

Hide
Type ':lua explain("0", "0 to line beginning", 2000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type '0'
Sleep 1

Hide
Type ':lua explain("$", "$ to line end", 2000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type '$'
Sleep 1

Hide
Type ':lua explain("}", "} to next paragraph", 2000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type '}'
Sleep 2

Hide
Type ':lua explain("{", "{ to previous paragraph", 2000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type '{'
Sleep 2

Hide
Type ':lua explain(")", ") to next sentence", 2000)'
Enter
Type ':'
Escape
Type 'j'
Show
Sleep 1
Type ')'
Sleep 2

Hide
Type ':lua explain("(", "( to previous sentence", 2000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type '('
Sleep 2

Hide
Type ':lua explain("gg", "gg to top of file", 2000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type 'gg'
Sleep 2

Hide
Type ':lua explain("G", "G to end of file", 2000)'
Enter
Type ':'
Escape
Show
Sleep 1
Type 'G'
Sleep 2

Sleep 5
