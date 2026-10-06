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

#pagebreak()
3. #strong("date",)
`date` command is used to display or set the system date. If used without parameters, it displays the current system date and prompts you to enter a new date.
It is very similar to the `time` command above.

#figure(
  image("images/date.png", width: 80%),
  caption: [
   An example of date command.
  ],
)

#v(30pt)
#line(length: 100%, stroke: 1pt + color.rgb("#e8e8e8"))
#v(20pt)

4. #strong("prompt",)
`prompt` command is used to set the current prompt syntax, which will get expanded when the user is using the cmd.
The line of text that is present before the user types the command in cmd is called prompt. It is generally in the format of 
`$p$g` which expands to current directory and a greater than symbol ">". as shown in the figure below.
This prompt can be changed into anything you like be it current directory and `=` symbol to only your name.
we can explore the available prompt options using the command `prompt /?`

#figure(
  image("images/prompt.png", width: 80%),
  caption: [
   An example of setting prompt very minimal popular unix prompt `$> `. 
  ],
)

#pagebreak()

5. #strong("help",)
`help` command displays a list of the available commands or detailed help information on a specified command. If used without parameters, help lists and briefly describes every system command.

#figure(
  image("images/help.png", width: 80%),
  caption: [
   An example of using `help` command to see help info about `prompt` command.
  ],
)
