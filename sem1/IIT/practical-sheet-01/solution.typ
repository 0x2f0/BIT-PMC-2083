#show raw.where(block: true): block.with(
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
  width: 100%
)

#import "/res/modules/front-page.typ": frontPage

#set page(
  paper: "a4",
  margin: (
    top: 0.35in,
    bottom: 0.35in,
    left: 0.55in,
    right: 0.55in,
  ),
)

#set text(
  font: "Times New Roman",
  size: 12pt,
)

#let syntax(text: none) = [
  #linebreak()
  #linebreak()
  _syntax:_
  #linebreak()

  #raw(lang: "cmd", block: true, text)
  #v(10pt)
]

#let example(img: none, caption: none, width: 80%) = {
  figure(
    image(img, width: width),
    caption: caption,
  )
}

#let divider(show_line: false,) = {
  v(30pt)

  if(show_line){
    line(length: 100%, stroke: 1pt + color.rgb("#e8e8e8"))
    v(20pt)
  }
}

#frontPage(
  "Practical file", 
  "Introduction to Information Technology", 
  "BIT101", 
  "2083", 
  [1#super[st]], 
  [Deo N. Yadav \ (Associate Professor)],
  "Saroj Regmi",
  "06"
)

#v(5in)
1. What are the boot files of DOS operating system. Explain the function of each. 

#pagebreak()
2. Write the function of following commands and their syntax in the lab sheet. Run and test each command in Lab.

#v(20pt)
2.1. #strong("cls")

`cls` command is used to clear the screen.
#syntax(text: "cls")
#v(10pt)

#example( 
  img: "images/before_cls.png",
  caption: "Before using the `cls` command",
  width: 50% 
)

#example(
  img:"images/after_cls.png", 
  caption: [ After using the `cls` command ],
  width: 50%,
)

#divider(show_line: true)

2.2. #strong("time")

`time` command is used to display or set the system time. If used without parameters, it displays the current system time and prompts you to enter a new time.
#syntax(text: "time [/t | [<HH>[:<MM>[:<SS>]] [am|pm]]]")
#example(
  img:"images/time.png",
  caption: [ An example of time command. ],
)

#pagebreak()
2.3. #strong("date")

`date` command is used to display or set the system date. If used without parameters, it displays the current system date and prompts you to enter a new date.
It is very similar to the `time` command above.
#syntax(text: "date [/t | <month-day-year>]")

#example(
  img:"images/date.png",
  caption: [ An example of date command. ],
)
#divider(show_line: true)

2.4. #strong("prompt")

`prompt` command is used to set the current prompt syntax, which will get expanded when the user is using the cmd.
The line of text that is present before the user types the command in cmd is called prompt. It is generally in the format of 
`$p$g` which expands to current directory and a greater than symbol ">". as shown in the figure below.
This prompt can be changed into anything you like be it current directory and `=` symbol to only your name.
we can explore the available prompt options using the command `prompt /?`
#syntax(text: "prompt [<text>]")

#example(
  img:"images/prompt.png",
  caption: [ An example of setting prompt very minimal popular unix prompt `$> `. ],
)

#pagebreak()

2.5. #strong("help")

`help` command displays a list of the available commands or detailed help information on a specified command. If used without parameters, help lists and briefly describes every system command.
#syntax(text: "help [<command>]")

#example(
  img: "images/help.png",
  caption: [ An example of using `help` command to see help info about `prompt` command. ],
)

#pagebreak()

3. What is wildcard? What are two wildcard characters. Explain with example. 

