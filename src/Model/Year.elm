module Model.Year exposing (Year(..), fromString, init, next, previous, toString)


type Year
    = TwentyOne
    | TwentyTwo


init : Year
init =
    TwentyOne


toString : Year -> String
toString year =
    case year of
        TwentyOne ->
            "2021"

        TwentyTwo ->
            "2022"


fromString : String -> Maybe Year
fromString str =
    case str of
        "2021" ->
            Just TwentyOne

        "2022" ->
            Just TwentyTwo

        _ ->
            Nothing


next : Year -> Maybe Year
next year =
    case year of
        TwentyOne ->
            Just TwentyTwo

        TwentyTwo ->
            Nothing


previous : Year -> Maybe Year
previous year =
    case year of
        TwentyOne ->
            Nothing

        TwentyTwo ->
            Just TwentyOne
