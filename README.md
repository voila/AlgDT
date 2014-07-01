You can launch the OCaml toplevel like this:

    $ ocaml

If you want to turn unexhaustive matches into errors, do:

    $ ocaml -warn-error +8 

once in the toplevel, load the files like this:

    # #use "cards.ml";;

Once the file is loaded, you should see the types and values available,
you can invoke a function like this:

    # card_value c;;
    - : int = 9

If you do not want to install OCaml, you can use this website: [tryOCaml](http://tryocaml.ocamlpro.com/).