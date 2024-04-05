#let project(doc) ={
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

  
  outline()
  doc

  bibliography("bib.yaml")
}
