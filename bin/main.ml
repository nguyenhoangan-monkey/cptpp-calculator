open Layoutz

let demo =
  layout
    [ center
        (row
           [ s "Layoutz" |> styleBold
           ; underlineColored ~char:"^" ~color:Color.cyan (s "DEMO")
           ])
    ; br
    ; row
        [ statusCard ~label:(s "Users") ~content:(s "1.2K")
        ; statusCard ~label:(s "API") ~content:(s "UP") |> borderDouble
        ; statusCard ~label:(s "CPU") ~content:(s "23%") |> borderThick |> colorRed
        ; table
            ~headers:[ s "Name"; s "Role"; s "Skills" ]
            [ [ s "Gegard"; s "Pugilist"
              ; ul [ li ~c:[ li ~c:[ li (s "man") ] (s "bad") ] (s "Armenian") ]
              ]
            ; [ s "Eve"; s "QA"; s "Testing" ]
            ]
          |> borderRound |> styleReverse
        ]
    ]

let () = print demo