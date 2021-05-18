module Model.Category exposing (Category(..), toString)


type Category
    = Eats
    | Buildings
    | Cars
    | Books
    | Desks
    | Music
    | Shadows


toString : Category -> String
toString category =
    case category of
        Eats ->
            "comida"

        Buildings ->
            "edificios"

        Cars ->
            "carros"

        Books ->
            "libros"

        Desks ->
            "mesas"

        Music ->
            "musica"

        Shadows ->
            "shadows"
