#let template(doc) = [
    // Lenguaje del documento.
    #set text(lang: "es")

    // Las secciones se enumeran.
    #set heading(numbering: "1.")

    // Vuelve las secciones principales negritas.
    #show outline.entry.where(level: 1): it => {
        v(12pt, weak: true)
        strong(it)
    }

    // Muestra los links subrayados.
    #show link: underline

    // Siempre muestra los raw como bloque
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
