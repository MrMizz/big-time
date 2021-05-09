module Model.Category exposing (Category(..), toString)


type Category
    = Eats
    | Architecture
    | Shadows


toString : Category -> String
toString category =
    case category of
        Eats ->
            "eats"

        Architecture ->
            "architecture"

        Shadows ->
            "shadows"
