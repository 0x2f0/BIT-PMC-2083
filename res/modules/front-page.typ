#let frontPage(title, subject, course_no, batch, semester, submitted_to,  name, roll_no) = {
  align(center)[
  // University logo
  #image("/assets/campus-logo.png", width: 0.75in)

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
  #text(size: 25pt)[#strong[#title]]
]

v(1in)

// Course information
grid(
  columns: (1.15in, 3.5in),
  row-gutter: 0.16in,
  column-gutter: 0.05in,

  [Subject],
  [: #subject],

  [Course No],
  [: #course_no],

  [Batch],
  [: #batch],

  [Semester],
  [: #semester],
)

v(3in)

// Submission information
grid(
  columns: (1fr, 1fr),
  column-gutter: 1fr,

  [
    Submitted To: \
    #submitted_to
  ],

  [
    Submitted by: \
    Name: #name\
    Roll No: #roll_no
  ],
)

}
