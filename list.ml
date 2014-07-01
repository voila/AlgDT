(*
// Generic lists in Go

package main

import "fmt"

type LinkedList struct {
   value interface{}
   next *LinkedList
}

func (oldNode *LinkedList) prepend(value interface{}) *LinkedList {
   return &LinkedList{value, oldNode}
}

func tail(value interface{}) *LinkedList {
   return &LinkedList{value, nil}
}

func traverse(ll *LinkedList) {
   if ll == nil {
     return
   }
   fmt.Println(ll.value)
   traverse(ll.next)
}

func main() {
   node := tail(5).prepend(6).prepend(7)
   traverse(node)
}

*)


(* 
Safe generic lists in OCaml.
OCaml does not have a generic print function, 
so we pass one as a second argument to traverse.
*) 
type 'a list = Nil | Cons of 'a * 'a list

let prepend x l =  Cons (x,l)

let tail x = Cons (x, Nil)

let rec traverse xs pr = 
  match xs with
    Nil -> ()
  | Cons (x,xs') -> pr x; traverse xs' pr

let main () = 
  let pr = fun x -> Printf.printf "%d\n" x
  in let node = prepend 7 (prepend 6 (tail 5))
  in  traverse node pr
