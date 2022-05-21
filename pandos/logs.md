Install package: https://discourse.haskell.org/t/how-to-install-modules/1363/3

### language overview
markdown
- text
- headings (#)
- bullet point?

latex
- text
- sections and subs
- itemize environment


### BNF rules for markdown
Let's say my document only have letters (A-Za-z), digits (0-9) and simple punctuation (,.?!-). That is 67 characters.

```bnf
internalChar ::= those 67 characters
internalCharSeq ::= (internalChar)+
heading ::= (# + inter)
paragraph ::= (internalChar)?\n
```

### Steps
1. split into blocks (still in Strings)
2. for each block
  recognize its type (heading, codeblock, para)
  turn it into a Node (currently only flat tree)
3. merge into one Tree