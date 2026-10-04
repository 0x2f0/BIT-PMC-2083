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

#align(center)[
  // University logo
  #image("../../../assets/campus-logo.png", width: 0.75in)

  #v(0.05in)

  // University name
  #text(size: 11pt)[त्रिभुवन विश्वविद्यालय] \
  #text(size: 10pt)[Tribhuvan University]

  #v(0.03in)

  #text(size: 13pt)[Patan Multiple Campus]

  #v(0.45in)

  // Degree
  #text(size: 23pt)[Bachelor in Information Technology] \
  #text(size: 23pt)[(BIT)]

  #v(0.65in)

  // Practical file
  #text(size: 25pt)[#strong[Practical File]]
]

#v(0.65in)

// Course information
#grid(
  columns: (1.15in, 3.5in),
  row-gutter: 0.16in,
  column-gutter: 0.05in,

  [Subject],
  [: Introduction to Information Technology],

  [Course No],
  [: BIT101],

  [Batch],
  [: 2083],

  [Semester],
  [: 1#super[st]],
)

#v(0.95in)

// Submission information
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1in,

  [
    Submitted To: \
    Deo N. Yadav \
    (Associate Professor)
  ],

  [
    Submitted by: \
    Name: \
    Roll No:
  ],
)
