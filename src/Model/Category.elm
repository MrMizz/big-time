module Model.Category exposing (Category(..), toString)


type Category
    = Eats
    | Buildings
    | Cars
    | Books
    | Desks
    | Shadows


toString : Category -> String
toString category =
    case category of
        Eats ->
            "eats"

        Buildings ->
            "buildings"

        Cars ->
            "cars"

        Books ->
            "books"

        Desks ->
            "desks"

        Shadows ->
            "shadows"
