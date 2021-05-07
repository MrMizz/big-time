module Model.MonthOfYear exposing (MonthOfYear(..), fromString, init, toString)


type MonthOfYear
    = Jan
    | Feb
    | Mar
    | Apr
    | May
    | Jun
    | Jul
    | Aug
    | Sep
    | Oct
    | Nov
    | Dec


init : MonthOfYear
init =
    May


fromString : String -> Maybe MonthOfYear
fromString str =
    case str of
        "01" ->
            Just Jan

        "02" ->
            Just Feb

        "03" ->
            Just Mar

        "04" ->
            Just Apr

        "05" ->
            Just May

        "06" ->
            Just Jun

        "07" ->
            Just Jul

        "08" ->
            Just Aug

        "09" ->
            Just Sep

        "10" ->
            Just Oct

        "11" ->
            Just Nov

        "12" ->
            Just Dec

        _ ->
            Nothing


toString : MonthOfYear -> String
toString moy =
    case moy of
        Jan ->
            "01"

        Feb ->
            "02"

        Mar ->
            "03"

        Apr ->
            "04"

        May ->
            "05"

        Jun ->
            "06"

        Jul ->
            "07"

        Aug ->
            "08"

        Sep ->
            "09"

        Oct ->
            "10"

        Nov ->
            "11"

        Dec ->
            "12"
