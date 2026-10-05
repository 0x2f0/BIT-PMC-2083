#import "/res/modules/front-page.typ": frontPage

#let mycmd(command: none, output: none) = {
  _cmd(
    width: 75%,
    command: command,
    output: output,
    prompt: "C:\Users\Saroj>",
  )
}

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

Q: Write the function of following commands and their syntax in the lab sheet. Run and test each command in Lab.

#v(10pt)
Some Basic commands:


#v(20pt)
1. #strong("cls",)
`cls` command is used to clear the screen.

#figure(
  image("images/before_cls.png", width: 80%),
  caption: [
    Before using the `cls` command
  ],
)

#figure(
  image("images/after_cls.png", width: 80%),
  caption: [
    After using the `cls` command
  ],
)

#v(30pt)
#line(length: 100%, stroke: 1pt + color.rgb("#e8e8e8"))

#v(20pt)
2. #strong("time",)
`time` command is used to display or set the system time. If used without parameters, it displays the current system time and prompts you to enter a new time.

#figure(
  image("images/time.png", width: 80%),
  caption: [
   An example of time command.
  ],
)
