# the SnuPL/1 language

The course project was to implement a simple compiler for the SnuPL/1 language from scratch.

This compiler compiles the SnuPL/1 language to 32-bit Intel assembly code, or assembly code.

The source code of compiler is in [5.Code.Generation/snuplc](https://github.com/hyunjin95/snu-compilers-2016/tree/master/5.Code.Generation/snuplc) and the sample files are in [samples](https://github.com/hyunjin95/snu-compilers-2016/tree/master/samples)

# Projects
There were five projects we had to complete during the semester. Detailed explanation of each project is given in the project pdf files in the project directorys.

## 1. Scanning
In the first phase, my job was to implement a scanner for the SnuPL/1 language as specified in the course project overview.

## 2. Parsing
In the second phase of our semester project, we constructed a parser for the SnuPL/1 language based on a hand-written predictive parser.

## 3. Semantic Analysis
In the third phase of the project, my job was to perform semantic analysis. In other words, I had to do type checking.

## 4. Intermediate Code Generation
In this phase, my task was to convert the abstract syntax tree into our intermediate representation in three-address code form.

## 5. Code Generation
In the fifth and last phase of the project, my task was to convert the IR code into x86 assembly code.


After finishing all these phases, the SnuPL/1 compiler was completed: it takes programs written in SnuPL/1 and outputs assembly code that can be compiled by an assembler into an executable file.
