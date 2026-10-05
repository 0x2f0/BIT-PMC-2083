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
