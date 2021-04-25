module Model.DayOfWeek exposing (DayOfWeek(..), toString)


type DayOfWeek
    = Sunday
    | Monday
    | Tuesday
    | Wednesday
    | Thursday
    | Friday
    | Saturday


toString : DayOfWeek -> String
toString dayOfWeek =
    case dayOfWeek of
        Sunday ->
            "Sun"

        Monday ->
            "M"

        Tuesday ->
            "T"

        Wednesday ->
            "W"

        Thursday ->
            "Th"

        Friday ->
            "F"

        Saturday ->
            "Sat"
