# Factorial in Coq: Implementation, Verification, and Extraction

This project serves as a practical introduction to the **Coq Proof Assistant**. It covers the entire formal development lifecycle: defining an algorithm, testing it, proving mathematical properties, and exporting the code to a functional programming language (OCaml).

## 🚀 Features

1.  **Recursive Implementation**: Definition of the factorial function using inductive data types (`nat`).
2.  **Interactive Computation**: Evaluation of expressions directly within the Coq environment using `Compute`.
3.  **Formal Verification**: Mathematical proof that the factorial function always returns a positive result ($n! > 0$).
4.  **Code Extraction**: Automatic generation of equivalent OCaml code, guaranteed to be correct.

## 📋 Code Structure

### 1. Algorithm Definition
The `fac` function is defined using structural recursion (via the `Fixpoint` keyword). Coq automatically verifies that the function terminates for any input, preventing infinite loops that could compromise the logic of the system.

### 2. Mathematical Proofs
* `fac_succ`: A helper lemma confirming the successor behavior of the function.
* `fac_pos`: The core of the project. Using **mathematical induction** and the `lia` (Linear Integer Arithmetic) tactic, we prove that the factorial of any natural number is strictly greater than zero.

### 3. Extraction
The code is extracted into **OCaml**, stripping away the proof metadata and retaining only the computational logic necessary for high-performance execution.

## 🛠️ Requirements & Installation

To run this script, you will need:
* **Coq Proof Assistant** (version 8.15+ recommended)
* A compatible editor: **VS Code** with the `VsCoq` extension or **CoqIDE**.

### Installation on Ubuntu:
```bash
sudo apt update
sudo apt install coq coqide
