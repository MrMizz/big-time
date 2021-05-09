module Model.Day exposing (Day, print)

import Model.Moment exposing (Moment)


type alias Day =
    { ofMonth : Int
    , moments : List Moment
    }


print : Int -> String
print int =
    case int < 10 of
        True ->
            "0" ++ String.fromInt int

        False ->
            String.fromInt int
