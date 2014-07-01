type 'a option = None | Some of 'a 

let rec lookup(key, lst) =
  match lst with 
  | [] -> None
  | (key', value) :: rest -> 
     if key = key' then Some value
     else lookup(key, rest)

let l1 = [("jared", (1.86, 67.0)); 
          ("anna", (1.65, 60.0)); 
          ("francis", (1.72, 85.0))]

let res1 = lookup ("carmen", l1)
let res2 = lookup ("francis", l1)

let bmi (name, lst) =  
  match lookup(name, lst)  with
    | None -> name ^ " not found!" 
    | Some(h,m) -> 
       (* string_of_float does not need to do null checks*)
       string_of_float(m /. (h *. h))  

let jared_bmi = bmi ("jared", l1 )
