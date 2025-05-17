# Sistemas de Tiempo Real

This repository contains exercises and projects for the **Sistemas de Tiempo Real** (Real-Time Systems) course, part of the Erasmus+ program at **Universidad de Almería**.

## Contents

The repository is organized into different exercises and practises:
### Ejercicios
- **ejercicio_01** – exploring various data types through simple exercises.
- **ejercicio_02** – basic instructions and control structures, including loops and conditional statements.
- **ejercicio_03** – working with files and arrays, focusing on reading, processing, and writing matrix data.
- **ejercicio_04** - implementing basic data structures (Queue and Stack) using ADA packages.
- **ejercicio_05** - implementation of a package for complex numbers with operator overloading.
- **ejercicio_08** – exploring Ada task concurrency by comparing sequential, static, and dynamic concurrent implementations of a manufacturing process.
- **ejercicio_09** – implementing concurrent tasks with shared resources and mutual exclusion mechanisms using semaphores and traffic-light-like control.
- **ejercicio_10** – creating a client-server communication model in Ada with message-passing between concurrent tasks using custom packages.
  
### Práctisas
- **practica_01** - simulation and control of a solar-powered membrane distillation plant. Implemented a cyclic executive to manage fixed and optimal control scenarios, data logging, safety checks, and real-time output in Ada.
- **practica_02** – modeling and implementing a real-time solar desalination control system using temporal Petri nets and Ada, first via a cyclic executive and then with concurrent tasks, incorporating shared resources, timing constraints, and safety checks.
  
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

**Author:**
Michał Grochowski
- Student at Białystok University of Technology
- Erasmus+ Student at Universidad de Almería
