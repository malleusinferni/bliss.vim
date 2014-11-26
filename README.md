# BLISS language support for Vim

This package contains limited editor support for [the BLISS language](http://en.wikipedia.org/wiki/BLISS), an early competitor to C for low-level systems programming. The directory layout is Pathogen-compatible and should work with other Vim package managers like Vundle.

Current feature set:

* Comments, strings, most keywords, and number literals are highlighted
* The fetch operator is specially highlighted to help distinguish when a name is used for its address and when it's being dereferenced for its value
* No indentation support whatsoever

If you need something in particular, feel free to open an issue. If you need a BLISS compiler, [try this](https://github.com/madisongh/blissc).
