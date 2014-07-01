(* -ocaml -warn-error +8 *)

type exp = Num of int
         | Plus of exp * exp
         | Mult of exp * exp
               
let rec eval e =
  match e with 
    | Num n -> n
    | Plus(e1, e2) -> eval e1 + eval e2
    | Mult(e1, e2) -> eval e1 * eval e2

let rec pprint e =
  match e with
    | Num n -> string_of_int n
    | Plus (e1, e2) -> pprint e1 ^ " + " ^ pprint e2 
    | Mult (e1, e2) -> pprint e1 ^ " * " ^ pprint e2 

let test1 = eval (Plus(Num 5, Mult(Num 4, Num 3)))
let test2 = pprint (Plus(Num 5, Mult(Num 4, Num 3)))

