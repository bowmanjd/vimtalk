# Try a little Vim

![neovim logo](assets/neovim-logo.svg) <!-- .element: class="r-stretch" -->

vim.bowmanjd.com
![QR code](assets/qrcode.svg) <!-- .element: class="r-stretch" style="vertical-align: middle" -->

Notes:

Welcome. I am Jonathan Bowman. This talk is about Vim, a terminal-based text editor. I have been using Vim for over 20 years. Still learning...

---

![Monty Python running knight](assets/montypython.webp) <!-- .element: class="r-stretch" style="vertical-align: middle" -->

Notes:

One of my co-workers saw me coming down the hall. She said that every time she looked up, she still saw me coming in the distance. As she told a few of us this, two of us immediately thought of that sketch from Monty Python's Holy Grail. But we didn't say anything, because we didn't want anyone to feel left out. Monty Python. Lots of people love it. But not everyone. _And not everyone has to love it_. Today, I am inviting you to consider Vim. Even if you don't end up using it, you might still enjoy pondering open source, well-designed tooling, collaboration, and maybe use your preferred text editor even better.

---

## Install Neovim


- [neovim.io](https://neovim.io)
- Download: <!-- .element: class="fragment" --> [github.com/neovim/neovim/releases](https://github.com/neovim/neovim/releases)
- Windows: <!-- .element: class="fragment" --> `scoop install neovim`
- Windows: <!-- .element: class="fragment" --> `winget install Neovim.Neovim`
- Mac:  <!-- .element: class="fragment" --> `brew install neovim`
- Debian/Ubuntu: <!-- .element: class="fragment" --> `apt install neovim`
- Fedora: <!-- .element: class="fragment" --> `dnf install neovim`
- Nix: <!-- .element: class="fragment" --> `nix-shell -p neovim`

Notes:

I encourage you to follow along if you have a laptop or phone (using iSH or Termux). While your OS may already have a version of vi and vim, for the full experience I would strongly suggest Neovim. You can install neovim in any of these ways. 

---

## Launch Neovim

- Launch a terminal
- `nvim`
- :help <!-- .element: class="fragment" -->
- :Tutor <!-- .element: class="fragment" -->

Notes:

To start Neovim, in your terminal of choice (if you are on Windows, I suggest Windows Terminal) type `nvim`. You can get start learning right away (and pretty much tune out the rest of this talk) by typing `:help` for a reference, or `:Tutor` for a 30 minute guided tutorial.

---

1. History
1. Hooray for Open Source
1. Modes: insert, normal, command...
1. Movement, change, repetition
1. Files
1. Searching
1. Navigating help
1. Extending Neovim
1. Learning Resources
1. Discussion

Notes:

Here is an itinerary so you know where we are going today.

---

## vim.bowmanjd.com

![QR code](assets/qrcode.svg) <!-- .element: class="hero" -->

Notes:

You can access this slide deck and related materials at vim.bowmanjd.com.

---

## Vim's lineage

![Teletype machine](assets/teletype.jpg) <!-- .element: class="hero" -->

Notes:

An ASR-33 teletype machine first made in 1963. No screen, just paper. It needs a line editor to edit.

|||

1966: [QED](https://en.wikipedia.org/wiki/QED_(text_editor)), a line editor<!-- .element: class="r-stretch" -->

Notes:

One of the first line editors. Also introduced regular expressions for the first time.

|||

1969: [ed](https://en.wikipedia.org/wiki/Ed_(text_editor)), a successor <!-- .element: class="r-stretch" -->

|||

<!-- .slide: data-background-image="assets/ed.gif" data-background-size="contain"  -->

Notes:

Here you can see ed (the one from the GNU project) in action. Some of the features here still exist in Vim.

|||

1976: em, the "editor for mortals"

...then en <!-- .element: class="fragment" -->

...maybe eo? <!-- .element: class="fragment" -->

...maybe ep? <!-- .element: class="fragment" -->

|||

1976: [ex](https://en.wikipedia.org/wiki/Ex_%28text_editor%29)

...included in Berkeley Software Distribution (BSD)

|||

# vi

In 1979, ex got a visual mode: vi

...eventually [included in the POSIX spec](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/vi.html)

Notes:

vi is the visual mode of ex, developed a few years later.

|||

## Works on a video terminal!

[![ADM-3A](assets/Adm3a.jpg) <!-- .element: class="hero" -->](https://en.wikipedia.org/wiki/ADM-3A)

Notes:

The first video terminal (check it out! It has a screen) vi was developed for was the ADM-3A. 12 inch screen, with a whopping 80 columns of text.

|||

<!-- .slide: data-background-image="assets/ADM3A.svg" data-background-size="contain"  -->

Notes:

Here is an outline of the keyboard. Note where the arrow keys are! This may explain some things later.

|||

## vi successors

- 1987: [STEVIE](https://timthompson.com/tjt/stevie/) (on the Atari ST)
- 1990: [Elvis](https://en.wikipedia.org/wiki/Elvis_(text_editor))
- 1994: [nvi](https://en.wikipedia.org/wiki/Nvi)

Notes:

vi was so good, it got improvements. None of these are terribly active today.

|||

## 1991: <del>Vi Imitation</del> Vi Improved

![Vim logo](assets/vimlogo.svg) <!-- .element: class="r-stretch" -->

Notes:

But this one is still quite active. Bram, the original author, wanted something like Stevie on his Amiga 2000, which until then didn't have a vi-like editor for it. (I always wished I had an Amiga 2000).

|||

## Bram Moolenar 1961-2023

![Vim logo](assets/vimlogo.svg) <!-- .element: class="r-stretch" -->

Notes:

Bram pursued what I would call a "benevolent dictator" model of leadership in an open source software project. It was a labor of love, it was his baby. He was a gatekeeper, tending the product. But open source developers are an eager bunch and for some, his gatekeeping felt like the sign says "You got to have a membership card to get inside" Huh

|||

<!-- .slide: data-background-image="assets/neovim-logo.svg" data-background-size="contain"  -->

Notes:

So, in 2015, Neovim was released after forking Vim. The reasons for the fork were varied, with primary emphasis on community contribution, modernizing code and structure, and a new plugin system.

I switched to Neovim a few years ago because of the way it integrated with external languages like Python, Ruby, and Javascript, and because of built in support for language servers -- the Language Server Protocol (LSP)

---

<!-- .slide: data-background-image="assets/editors.png" data-background-size="contain"  -->

Notes:

Vim and Neovim have a notable percentage. I love that most of these are open source... What does it say that the tool developers probably use the most and care about the most are often open source?

---

## Open source at its best

- Quality from public scrutiny
- Hospitable community
- No financial barriers
- Relevant features from public contribution and thorough review
- Openly extendable, easy to integrate
- Longevity unencumbered by corporate captivity

Notes:

Open source projects can be dysfunctional, and closed source processes can be healthy. Yet Neovim is an prototypical example of an open source project done well. (read the points)

|||

## Collaborate!

- <!-- .element: class="fragment" --> <i class="nf nf-oct-heart"></i> Donate 
- <!-- .element: class="fragment" --> <i class="nf nf-oct-issue_opened"></i> Issues
- <!-- .element: class="fragment" --> <i class="nf nf-oct-book"></i> Documentation
- <!-- .element: class="fragment" --> <i class="nf nf-oct-git_pull_request"></i> Code
- <!-- .element: class="fragment" --> <i class="nf nf-md-stack_exchange"></i> Help

Notes:

Do you ever stop and ponder how you might play a role in the open source tools you use? (Read points)

---

# Modes <!-- .element: class="hero" -->

Notes:

Let's launch into a bit of a Vim how-to. A concept that seems important to grasp early on with Vim is that it has multiple _modes_.

|||

<!-- .slide: data-background-image="assets/bob-ross-insert.jpg" data-background-size="contain"  -->

Notes:

Think of an artist. A painter. Some of the time, they are in a mode with their brush on the canvas. This, in Vim, we call "insert mode".

|||

## Insert mode

- `i` (insert) enters insert mode before the cursor
- `a` (append) enters insert mode after the cursor
- `o` (open new line) new line below current
- `O` (open new line above) new line above current
- `<Esc>` returns to normal mode

Notes:

Vim doesn't start in insert mode, but you can get there with these keys. (read keys)

|||

<!-- .slide: data-background-image="assets/bob-ross-normal.jpg" data-background-size="contain"  -->

Notes:

A painter does do a lot, though, with the brush _off_ the canvas. In Vim, this is called "normal mode"

|||

## Normal mode

- Artists spend much of their time as "normal"
- Vim starts in normal mode; `<Esc>` returns
- Things to try:
  - `h`, `j`, `k`, `l` or cursor keys to move
  - `gg` move to top of file; `G` move to bottom or line #
  - `yy` to "yank" (copy) a line
  - `dd` to delete (cut) a line
  - `x` to cut character under the cursor
  - `p` to paste

Notes:

Read points

|||

<!-- .slide: data-background-image="assets/normal.gif" data-background-size="contain"  -->

Notes:

Here is a mixed up poem. Using only keys in normal mode, with no mouse, it is possible to rearrange the lines. A contrived example, but it is remarkable how much of my daily editing is just moving lines around.

|||

## Command mode

- `:` enters command mode from normal mode
- Therefore, `<Esc>:` enters command from insert mode
- `:q` will quit Vim 
- `:w` will save the current file
- Commands can be combined, as in `:wq`
- This is Ex mode (line editing)

Notes:

Read points

|||

## Visual mode

- `v` enters visual mode from normal mode
- Make desired selection, the type action
- `V` enters visual mode linewise

|||

<!-- .slide: data-background-image="assets/visual.gif" data-background-size="contain"  -->

Notes:

Here we enter visual mode with `v` then select two sentences, then delete them.

|||

## Visual block mode

- `ctrl-v` enters visual block mode
- corners defined by cursor
- select desired block, then type action

|||

<!-- .slide: data-background-image="assets/visualblock.gif" data-background-size="contain"  -->

Notes:

Need to delete a rectangle of text? Happens more than you think.

Can also automate a repeated insert before the block. Or after.

|||

## Replace mode

- type over existing text
- `R` (shift-r) enters replace mode

---

## Movement

- `h j k l`: left, down, up, right
- cursor keys work fine, too
- `w` and `b` move by word
- `)` and `(` move by sentence
- `}` and `{` move by paragraph
- `f` or `t` followed by character 
- `gg` to top, `G` to end of file
- `100G` or `:100` will go to line 100

Notes:

Read the points

|||

<!-- .slide: data-background-image="assets/movement.gif" data-background-size="contain"  -->

---

## Change

- `r` will replace a character with the next typed
- `c` plus a movement will delete then insert
- Example: `ce` to change to the end of the word
- `c$` to change to end of line; `C` is synonymous

---

## Repetition

- `.` repeats a simple change

Notes:

For instance, if I want to delete 3 words at a time, I use 3dw. Then I can just hit `.` to delete the next three words. And so on.

|||

## Record macros

- `q` followed by register (a-z work great)
- Execute a variety of actions
- press `q` to end the recording
- play back with `@` then the register
- `@@` repeats the last played recording

Notes:

Recorded macros can be easily repeated, and also accept a number before.

## Undo

- `u` to undo the last change
- `U` to undo all changes on a line
- `ctrl-r` to redo the last undo
- (undo a `U` with `u`, oddly)

---

## File commands

- `:e filename.txt` opens a file
- `:w` saves the file
- `:w filename.txt` saves to filename
- `:r filename.txt` retrieves file contents

---

## Searching

- `/search term I want to find`
- `/^supports reg[ular ]*ex[presion]*$`
- `*` in normal mode finds next match of word under cursor
- `#` finds previous match of word under cursor
- `n` find the next match, `N` the previous

---

## Search and replace

- `s/war/peace/`
- `s/war/peace/g`
- `%s/war/peace/g`
- `%s/war/peace/gc`

Notes:

- Replace the first occurrence of war in this line with peace
- Replace the all occurrences of war in this line with peace
- Replace the all occurrences of war in this file with peace
- Prompt at each

|||

<!-- .slide: data-background-image="assets/war.gif" data-background-size="contain"  -->

---

## `:help`

Abbreviated `:h`

|||

## Help with Normal mode commands

`:help x`

`:h D`

|||

## Help with Command mode

prefix: `:`

`:h :dig`

`:h :b`

|||

## Help with Insert mode commands

prefix: `i_`

`:h i_ctrl-u`

`:h i_ctrl-k`

|||

## Help with Visual mode commands

prefix: `v_`

`:h v_~`

`:h v_gq`

|||

## Help with config options

prefix: `'`

`:h 'shiftwidth`

`:h 'cursorline`

|||

## Help with regex

prefix: `/`

`:h /\d`

`:h /[`

---

## Extensibility

Neovim is easy to extend through:

- Plugins
- Language Servers
- Customization

|||

## Plugin managers

- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [pckr](https://github.com/lewis6991/pckr.nvim)
- [paq](https://github.com/savq/paq-nvim)
- [vim-plug](https://github.com/junegunn/vim-plug)
- built-in/manually: see `:h plugin`

|||

Notes:

lazy.nvim seems to be far and away the hip new favorite. Others are also good options, or you can handle it manually with git yourself.

## LSP integration

- [Language Server Protocol](https://microsoft.github.io/language-server-protocol/)
- Easy LSP configs: [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- Completions: [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [Mason](https://github.com/williamboman/mason.nvim) to manage the external tooling

Notes:

Neovim can easily interface with the same language servers that VSCode uses. Use nvim-lspconfig to make life easier. nvim-cmp to add autocompletions, and mason to make installing dependencies easier.

|||

## Learn Lua for optimal Neovim configuration

- [learnxinyminutes.com/docs/lua](https://learnxinyminutes.com/docs/lua/)
- [`:h lua-guide`](https://neovim.io/doc/user/lua-guide.html) 

Notes:

The old way that still works to configure Vim is with Vimscript. Neovim supports Lua which is faster and is its own general purpose language. Learn a little lua can make confuring Neovim smoother for you.

|||

## Sample configs

- [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
- [nvim-starter](https://github.com/VonHeikemen/nvim-starter)
- [tinyvim](https://github.com/NvChad/tinyvim)
- [Launch.nvim](https://github.com/LunarVim/Launch.nvim)
- [dope](https://github.com/nvimdev/dope)
- [Ecovim](https://github.com/ecosse3/nvim)

---

## Popular Neovim "distributions"

[NvChad](https://nvchad.com/) <!-- .element: class="fragment" -->

[LazyVim](http://www.lazyvim.org/) <!-- .element: class="fragment" -->

[AstroNvim](https://astronvim.com/) <!-- .element: class="fragment" -->

[LunarVim](https://www.lunarvim.org/) <!-- .element: class="fragment" -->

[vscode-neovim](https://github.com/vscode-neovim/vscode-neovim) <!-- .element: class="fragment" -->

Notes:

For a good out-of-box experience, consider one of these. VS Code is not a Neovim distribution, I suppose. But it is a popular way of using Neovim. You get real Neovim and real VS Code in one.

---

# Learning resources <!-- .element: class="hero" -->

|||

<!-- .slide: data-background-image="assets/Learning-the-vi-and-Vim-Editors.jpg" data-background-size="contain"  -->

|||

<!-- .slide: data-background-image="assets/practical-vim.jpg" data-background-size="contain"  -->

|||

<!-- .slide: data-background-image="assets/modern-vim.jpg" data-background-size="contain"  -->


|||

- ["Getting Started" from the subreddit](https://www.reddit.com/r/neovim/wiki/index/getting-started/)
- [vi.stackexchange.com](https://vi.stackexchange.com/)
- [Awesome Neovim](https://github.com/rockerBOO/awesome-neovim)
- [This Week in Neovim](https://dotfyle.com/this-week-in-neovim)
- [Neovim related projects](https://github.com/neovim/neovim/wiki/Related-projects)
- [dotfyle.com](https://dotfyle.com/)
- [neovimcraft](https://neovimcraft.com/)

|||

- ["The Only Video You Need to Get Started with Neovim" by TJ Devries](https://www.youtube.com/watch?v=m8C0Cq9Uv9o)
- [@teej_dv](https://www.youtube.com/@teej_dv)
- [@ThePrimeagen](https://www.youtube.com/@ThePrimeagen)
- [@bashbunni](https://www.youtube.com/playlist?list=PL3PYGQRVAjrMxP5HK45CTnR7Yv-QYR1Qp)
- [@typecraft_dev](https://www.youtube.com/@typecraft_dev)
- ["Understanding Neovim" by @vhyrro](https://www.youtube.com/watch?list=PLx2ksyallYzW4WNYHD9xOFrPRYGlntAft)
- [@chrisatmachine](https://www.youtube.com/watch?v=ctH-a-1eUME&list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ)

|||

## VimGolf.com

[![Vim Golf](assets/vim_golf.png)](https://www.vimgolf.com/)

|||

[![VIM adventures](assets/vim_adventures.png)](https://vim-adventures.com/)

---

## Interaction

- Questions
- Favorite plugins
- Productive strategies yet unmentioned
- Controversial arguments...

