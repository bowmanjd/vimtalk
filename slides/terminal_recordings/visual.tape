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

Output visual.gif

Set FontSize 24
Set FontFamily "Hack Nerd Font"
Set Width 1600
Set Height 900

Hide
Type "nvim -n ~/devel/vimtalk/slides/terminal_recordings/marriage.txt"
Enter
Show
Sleep 1
Hide
Type ':lua explain("v","Enter visual mode", 2000)'
Enter
Type ':'
Escape
Type '}j'
Show
Sleep 1
Type "v"
Sleep 2
Hide
Type ':lua explain("2as", "Select 2 sentences", 4000)'
Enter
Type ':'
Escape
Type "v"
Show
Sleep 1
Type "2as"
Sleep 3
Hide
Type ':lua explain("d", "Delete them", 3000)'
Enter
Type ':'
Escape
Type "v2as"
Show
Sleep 1
Type "d"
Sleep 3

