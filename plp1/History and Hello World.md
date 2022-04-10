# Haskell: Getting started
*Code example: [hello.hs](hello.hs)*

Haskell is a popular functional programming language.

## History
Around 1980s, researchers were interested in a new concept called functional programming, a programming paradigm where all computations are mathematical evaluations. At that time, Miranda was the dorminant purely functional programming language. But it is a proprietary software. 

Starting from a conference in 1987, researchers start to create an "open standard" which described a new functional programming language. The first version of Haskell was created in 1990, and has been renewed with the latest update in 2010.

## Installation on Linux
You first need to intall `GHCup`, `stack` and GMP:

```
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
curl -sSL https://get.haskellstack.org/ | sh
sudo apt install libgmp3-dev
```

Then you should be able to run `ghci` in the terminal and get something like this:
```
$ ghci
GHCi, version 8.10.7: https://www.haskell.org/ghc/  :? for help
Prelude> 
```
Press `Ctrl/Cmd + Z` to exit.

## "Hello world" program

There are two ways to "run" Haskell: interactive vs compiled. They are similar to Python shell (by running `python`) vs running `python [filename]`.

### Interactive mode
After the `ghci` command, you are in "Glasgow Haskell Compiler interactive mode". Enter the following code, you should get the same output.

```
Prelude> "Hello World"
"Hello World"
```

That's hello-world in GHCI. 

### Compile Haskell source file
You can also create `hello.hs` file with the following code:
```
main = putStrLn "Hello, World!"
```

Then compile the file and run like following:
```
$ ghc -o hello hello.hs
$ ./hello
Hello, World!
```

## References
- https://en.wikipedia.org/wiki/Haskell_(programming_language)
- https://en.wikipedia.org/wiki/Purely_functional_programming
- https://wiki.haskell.org/Haskell_in_5_steps
- https://askubuntu.com/questions/207724/how-to-install-the-latest-gmp-library-in-12-04