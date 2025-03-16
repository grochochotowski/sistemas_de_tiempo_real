# Sistemas de Tiempo Real

This repository contains exercises and projects for the **Sistemas de Tiempo Real** (Real-Time Systems) course, part of the Erasmus+ program at **Universidad de Almería**.

## Contents

The repository is organized into different exercises and practises:

- **ejercicio_01** – exploring various data types through simple exercises.
- **ejercicio_02** – basic instructions and control structures, including loops and conditional statements.
- **ejercicio_03** – working with files and arrays, focusing on reading, processing, and writing matrix data.
- **ejercicio_04** - implementing basic data structures (Queue and Stack) using ADA packages.

## Programming Language

All exercises are implemented in **Ada**, a high-level programming language designed for real-time and embedded systems.

## Requirements

To compile and run the Ada programs, you will need:

- **GNAT (GNU Ada Translator)** – Available as part of the [GNAT Community Edition](https://www.adacore.com/community) or via package managers:
  - Debian/Ubuntu: `sudo apt install gnat`
  - Windows: Install via [MinGW](http://mingw-w64.org/) or [GNAT Community](https://www.adacore.com/download)
  - macOS: Install via `brew install gnat`

## Compilation and Execution

To compile an Ada source file (`.adb` or `.ads`), use:

```sh
gnatmake filename.adb
```
To run the compiled program:
```sh
./filename
```

Author:
[Michał Grochowski]
- Student at Białystok University of Technology
- Erasmus+ Student at Universidad de Almería
