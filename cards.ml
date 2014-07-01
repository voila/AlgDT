(* -ocaml -warn-error +8 *)

type color = Black | Red
type suit = Club | Diamond | Heart | Spade
type rank = Joker | Jack | Queen | King | Ace | Num of int
type card = rank * suit

let c = (Num 9, Club)

let card_color c =
    match c with 
    | (_, Club)  -> Black
    | (_, Spade) -> Black
    | _          -> Red

let card_value c = 
    match c with
    | (Ace, _) -> 11
    | (Num(v), _) -> v
    | _ -> 10             (* exhaustive patt *)
