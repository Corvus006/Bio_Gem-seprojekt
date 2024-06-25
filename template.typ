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
      font:"Arial",
      size: 12pt,
      lang: "de",
  )
  set heading(numbering: "1.")
  show outline.entry.where(
    level:1
  ): it => {
    v(12pt,weak: false)
    strong(it )
  }

  
  text(22pt, title)
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
  
  outline(indent: auto)
  doc

  bibliography(
   "bib.yaml",
    full: true,
    style: "ieee",
  )
}
