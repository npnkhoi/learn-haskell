# Pandos: MarkdownToLaTeX Converter

As simple as it sounds, this Haskell module can generate a LaTeX file from the content of a Markdown file. This is inspired by [pandoc](https://pandoc.org/), the "universal markup converter".

### Architecture
Like `pandoc`, this `pandos` has:
- A reader, which converts the markdown content into an abstrat syntax tree (like a parse tree if you wish).
- A writer, which converts the parse tree into LaTeX content.

### FAQ
- **Why "pandoc"?** `(pandoc + pandas) / 2 = pandos`, they are the two packages I love.
- **Why only a simple converter?** Haskell requires a super steep learning curve, and I did not manage to learn all the monads and functor stuff yet. Also, package management with Haskell and VSCode is difficult, although I am familiar with `pip` and `npm` already.