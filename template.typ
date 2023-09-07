#let template(doc) = [
    #set text(lang: "es")

    #show link: underline

    #set raw(block: true)
    // Display inline code in a small box
    // that retains the correct baseline.
    #show raw.where(block: false): box.with(
    fill: luma(240),
    inset: (x: 3pt, y: 0pt),
    outset: (y: 3pt),
    radius: 2pt,
    )

    // Display block code in a larger block
    // with more padding.
    #show raw.where(block: true): block.with(
    fill: luma(240),
    inset: 10pt,
    radius: 4pt,
    )
    #doc
]
