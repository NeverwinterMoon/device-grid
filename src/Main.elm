import Html

mainDiv name =
    Html.div [] [ Html.text <| "I am DIV block names " ++ name ]

main =
    let
        name = "Aarne"
    in
        mainDiv name
