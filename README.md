# A simple example of using 0D to transpile a trivial language to, both, Javascript and Common Lisp.

To keep things simple, this language - ABC - is defined as:
- an Atom or an Expression
- and Atom is a variable or an integer
- a variable consists only of 1-character names "A..Z" or "a..z"
- allows assignments
- allows addition.

See other examples for more interesting languages.

This example shows the very basics of parsing and transpiling languages. 

The most interesting part is emitting Lisp (which will be related to emitting WASM). Since the syntax of Lisp is recursive, we need to write the parsing rules in a recursive manner, basically avoiding the built-in PEG opeators for iteration `*` and `+`. 

Again, see other examples for deeper insights...

For example, see the arith0d project.

![](doc/abc0d-main.drawio.svg)
