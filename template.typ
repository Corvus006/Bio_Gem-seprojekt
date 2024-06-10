#let conf(
  title: none,
  authors: (),
  doc,
  ) ={
  set page(
    paper: "a4",
    margin: (left:25mm,right:25mm,top:25mm,bottom:20mm),
    number-align: center,
    numbering: "1",
    
    
  )
  set par(
      justify: true,
      leading: 1.0em
  )
  set align(center)
  set list(
      marker: ([•],[--])
  )
  set text(
      font:"Times New Roman",
      size: 10pt,
      lang: "de",
  )

  
  text(17pt, title)
  let count = authors.len()
  let ncols = calc.min(count,3)
  grid(
    columns: (1fr,)* ncols,
    row-gutter: 24pt,
    ..authors.map(author=>[
      #author.name\
      #link("mailto:" + author.email)
    ])
  )
  
  outline()
  doc

  bibliography("bib.yaml")
}
