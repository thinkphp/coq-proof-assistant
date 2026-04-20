Require Import Arith.

Theorem plus_O_n : forall n : nat, 
  n + 0 = n.
Proof.
  induction n.
  - (* Cazul de bază: n = 0 *)
    simpl. 
    reflexivity.
  - (* Pasul inductiv: n = S n' *)
    simpl. 
    rewrite IHn. 
    reflexivity.
Qed.
