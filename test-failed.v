Theorem test_fals : forall n : nat, 
  n + 1 = n. (* Aceasta este evident falsă *)
Proof.
  induction n.
  - simpl. 
    reflexivity. (* AICI VA DA EROARE (ROȘU) *)
Qed.
