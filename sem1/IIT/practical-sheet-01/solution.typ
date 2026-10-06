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

#let syntax(text: none, header: "syntax") = [
  #linebreak()
  #linebreak()
  _#header :_
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
1. *What are the boot files of DOS operating system. Explain the function of each.*
#v(10pt)

Boot files are special system files that are required to start or “boot” an operating system when a computer is turned on. They contain the instructions and components needed to load the operating system into memory and make the computer ready for use.
The main boot files of MS-DOS are:

#v(10pt)
1. *IO.SYS*\
  1.1 It is the DOS input/output system file.\
  1.2 It contains basic device drivers and routines needed to communicate with hardware.\
  1.3 It initializes the system and provides basic input/output services.\

#v(10pt)
2. *MSDOS.SYS*\
  2.1 It is the DOS kernel.\
  2.2 It manages important operating-system functions such as file management, memory management, and program execution.\
  2.3 It works with IO.SYS to provide the basic DOS environment.\

#v(10pt)
3. *COMMAND.COM*\
  3.1 It is the DOS command interpreter.\
  3.2 It displays the command prompt and interprets commands such as DIR, COPY, DEL, and CD.\
  3.3 It also executes batch files such as AUTOEXEC.BAT.\

#pagebreak()

2. *Write the function of following commands and their syntax in the lab sheet. Run and test each command in Lab.*

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

3. *What is wildcard? What are two wildcard characters. Explain with example.*

In software or generally, a wildcard character is a special single character that serves as a placeholder for someother character or characters.
There are two wildcard characters in DOS.\

They are:
1. asterik (\*)
2. question mark (?)

#v(20pt)
1. *asterik (\*)*\
asterik is a wildcard character that serves as a placeholder for any number of characters and matches every single character.
#example(
  img: "images/prompt.png",
  caption: [An example of using *asterik* wildcard.]
)

#v(20pt)
2. *question mark (\*)*\
question mark is a wildcard character that serves as a placeholder for only one character and matches only one character 
#example(
  img: "images/prompt.png",
  caption: [An example of using *question mark* wildcard.]
)

#pagebreak()
4. *Directory Manipulation:*
#v(20pt)

4.1 *dir*\
*dir* command is used to list the files and directory of the current location or path.
#syntax(text: "dir")
#example(
  img: "images/before_cls.png",
  caption: [An example of using *dir* command.]
)

#divider(show_line: true)

4.2 *md* or *mkdir*\
*md* or *mkdir* command is used to make a directory. 
#syntax(text: "mkdir [<drive>:]<path>
md [<drive>:]<path>
")
#example(
  img: "images/before_cls.png",
  caption: [An example of using *md* and *mkdir* command.]
)

#pagebreak()

4.3 *cd* or chdir\
*cd* or *chdir* command is used change the current directory.
#syntax(text: "cd [/d] [<drive>:][<path>]
cd [..]
chdir [/d] [<drive>:][<path>]
chdir [..]
")
#example(
  img: "images/before_cls.png",
  caption: [An example of using *chdir* and *cd* command.]
)

#divider(show_line: true)

4.4 *ren*\
*ren* command is used to rename file and directory in cmd. 
#syntax(text: "ren [<drive>:][<path>]<filename1> <filename2>")
#example(
  img: "images/before_cls.png",
  caption: [An example of using *ren* command.]
)

#pagebreak()

4.5 tree\
*tree* command is used to display the directory structure of a path or of the disk in a drive graphically. 
#syntax(text: "tree [<drive>:][<path>] [/f] [/a]")
#example(
  img: "images/before_cls.png",
  caption: [An example of using *tree* command.]
)

#divider(show_line: true)

4.6 *rd* or *rmdir*\
*rd* or *rmdir* command is used to delete folder, if proper flags are specified it can also delete all the files and folder contained inside the specified folder.
#syntax(text: "rd [<drive>:]<path> [/s [/q]]")
#example(
  img: "images/before_cls.png",
  caption: [An example of using *rd* and *rmdir* command.]
)
#pagebreak()

5. *File Manipulation:*
#v(20pt)

5.1 *edit*\
*edit* command is used to start the MS-DOS Editor, which creates and changes ASCII text files.
#syntax(text: "edit [/b] [/h] [/r] [/s] [/<nnn>] [[<drive>:][<path>]<filename> [<filename2> [...]]")
#example(
  img: "images/before_cls.png",
  caption: [An example of using *edit* command.]
)

#divider(show_line: true)

5.2 notepad\
*notepad* command or application can also be opened directly through cli interface of cmd.exe where we can create do different file operations. 
#example(
  img: "images/before_cls.png",
  caption: [An example of using *opening notepad* using cli.]
)

#pagebreak()

5.3 *copy*\
*copy* command can be used to Copy one or more files from one location to another
#syntax(text: "copy [/d] [/v] [/n] [/y | /-y] [/z] [/a | /b] <source> [/a | /b] [+<source> [/a | /b] [+ ...]] [<destination> [/a | /b]]")
#example(
  img: "images/before_cls.png",
  caption: [An example of using *copy* command.]
)

#divider(show_line: true)

5.4 *del* or *erase*\
*del* or *erase* command can be used to delete one or more files from your filesystem.
#syntax(text: "del [/p] [/f] [/s] [/q] [/a[:]<attributes>] <names>
erase [/p] [/f] [/s] [/q] [/a[:]<attributes>] <names>")
#example(
  img: "images/before_cls.png",
  caption: [An example of using *del* and *erase* command.]
)
#pagebreak()

5.5 *doskey*\
*doskey* command calls Doskey.exe, which recalls previously entered command-line commands, edits command lines, and creates macros. 
#syntax(text: "doskey [/reinstall] [/listsize=<size>] [/macros:[all | <exename>] [/history] [/insert | /overstrike] [/exename=<exename>] [/macrofile=<filename>] [<macroname>=[<text>]]")
#example(
  img: "images/before_cls.png",
  caption: [An example of using *doskey* command.]
)

#divider(show_line: true)

5.6 *rename* or *ren*\
*rename* or *ren* command can be used to rename one or more files or directories. We can also use wildcard characters (\* and ?) to rename multiple files in a single command.
#syntax(text: "rename [<drive>:][<path>]<filename1> <filename2>
ren [<drive>:][<path>]<filename1> <filename2>")
#example(
  img: "images/before_cls.png",
  caption: [An example of using *ren* and *rename* command.]
)
#pagebreak()

5.7 *type*\
*type* command can be used to display the contents of a text file. We can use the type command to view a text file without modifying it.  
#syntax(text: "type [<drive>:][<path>]<filename>")
#example(
  img: "images/before_cls.png",
  caption: [An example of using *type* command.]
)

#divider(show_line: true)

5.8 *print*\
*print* command can be used to send a text file to a printer. A file can print in the background if you send it to a printer connected to a serial or parallel port on the local computer
#syntax(text: "print [/d:<printername>] [<drive>:][<path>]<filename>[ ...]")
#example(
  img: "images/before_cls.png",
  caption: [An example of using *print* command.]
)
#pagebreak()

5.9 *copy con*\
*copy con* command is used to create, write, or overwrite text and batch files directly from the Command Prompt 
#syntax(text: "copy con [<filename>]")
#example(
  img: "images/before_cls.png",
  caption: [An example of using *copy con* command.]
)

#divider(show_line: true)

5.10 *attrib*\
*attrib* command can be used to display, set, or remove attributes assigned to files or directories. If used without parameters, attrib displays attributes of all files in the current directory.
#syntax(text: "attrib [{+|-}r] [{+|-}a] [{+|-}s] [{+|-}h] [{+|-}o] [{+|-}i] [{+|-}x] [{+|-}p] [{+|-}u] [{+|-}b] [<drive>:][<path>][<filename>] [/s [/d] [/l]]")
#example(
  img: "images/before_cls.png",
  caption: [An example of using *attrib* command.]
)
#pagebreak()

5.10 *fc*\
*fc* command can be used to compare two files or sets of files and display the differences between them.
#syntax(text: "fc /a [/c] [/l] [/lb<n>] [/n] [/off[line]] [/t] [/u] [/w] [/<nnnn>] [<drive1>:][<path1>]<filename1> [<drive2>:][<path2>]<filename2>
fc /b [<drive1:>][<path1>]<filename1> [<drive2:>][<path2>]<filename2>")
#example(
  img: "images/before_cls.png",
  caption: [An example of using *fc* command.]
)
#pagebreak()


5. *Use of Redirection, Filters, Pipes*
#v(20pt)

5.1 *Redirection input and output*\
#v(10pt)
5.1.1 *output redireciton (>)*\
The greater than operator is used to redirect the output of stdout into a file instead of displaying it into the screen.
#syntax(text: "dir > file.txt", header: "example")
in the above example the all the files and folder's name inside the current directory will be added inside the file called file.txt.

#v(10pt)
5.1.2 *output redireciton append (>>)*\
The double greater than operator is used to redirect the output of stdout into a file instead of displaying it into the screen. But instead of replacing the items of the specified file it appends additional contents to it.
#syntax(text: "\"some more text\" >> file.txt", header: "example")
in the above example the some more text will be appended to the file.txt where previously all the files and folder's name of the current directory were present. 

#v(10pt)
5.1.2 *input redireciton (<)*\
The smaller than operator is used to input a file or stdin as input to a program. 
#syntax(text: "sort < names.txt", header: "example")
here in the example above, the contents of the file name.txt are passes as the input to the sort command using input redirection.

#pagebreak()

#v(20pt)
5.2 *Use of Filters and Pipes*\
#v(10pt)
5.2.1 *Pipe ( | )*\
The pipe operator ( | ) is used to provide the output of one command as input to another command.
#syntax(text: "dir | find \".png\"", header: "example")
here in the example above, the output of dir command is passed as the input to the find command. 

#v(10pt)
5.2.2 *Filters commands*\

#v(10pt)
5.2.2.1 *more*\
*more* command is used to limit the output of a program one screen at a time. It is specifically useful when the output of certain commands is more than a screen and is hard to fit in a single screen.
#syntax(text: "<command> | more [/c] [/p] [/s] [/t<n>] [+<n>]
more [[/c] [/p] [/s] [/t<n>] [+<n>]] < [<drive>:][<path>]<filename>
more [/c] [/p] [/s] [/t<n>] [+<n>] [<files>]")

#example(img: "images/after_cls.png", caption: "Using more filter command")


#v(10pt)
5.2.2.2 *sort*\
*sort* can be used to read input, sort data, and write the results to the screen or to a file using redirect operationrs like (>, >>).
#syntax(text: "sort [/r] [/+<N>] [/m <kilobytes>] [/l <locale>] [/rec <characters>] [[<drive1>:][<path1>]<filename1>] [/t [<drive2>:][<path2>]] [/o [<drive3>:][<path3>]<filename3>]")

#example(img: "images/after_cls.png", caption: "Using sort command")
