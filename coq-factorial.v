Require Import Arith.
Require Import Lia.
Require Import Extraction.

(* 1. Definiț ia funcției Factorial *)
Fixpoint fac n :=
  match n with
  | 0 => 1
  | S n' => n * fac n'
  end.

(* 2. Testarea calculului *)
Compute fac 5. (* Ar trebui să returneze 120 *)

(* 3. Demonstrația unei leme ajutătoare *)
Lemma fac_succ n : fac (S n) = S n * fac n.
Proof. reflexivity. Qed.

(* 4. Demonstrația proprietății de pozitivitate *)
Lemma fac_pos n : fac n > 0.
Proof.
  induction n.
  - simpl. lia. (* Cazul de bază: 1 > 0 *)
  - rewrite fac_succ. 
    (* Pasul inductiv: S n * fac n > 0 *)
    (* lia știe că produsul a două numere pozitive este pozitiv *)
    lia. 
Qed.

(* 5. Extracția codului în OCaml *)
Extraction Language OCaml.
Extraction fac.
