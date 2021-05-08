module Model.Week exposing (Week, empty, toList)

import Model.Day exposing (Day)


type alias Week =
    { sunday : Maybe Day
    , monday : Maybe Day
    , tuesday : Maybe Day
    , wednesday : Maybe Day
    , thursday : Maybe Day
    , friday : Maybe Day
    , saturday : Maybe Day
    }


empty : Week
empty =
    Week
        Nothing
        Nothing
        Nothing
        Nothing
        Nothing
        Nothing
        Nothing

toList : Week -> List Day
toList week =
    let
        l =
            [ week.sunday
            , week.monday
            , week.tuesday
            , week.wednesday
            , week.thursday
            , week.friday
            , week.saturday
            ]

        f: Maybe a -> List a -> List a
        f maybe list =
            case maybe of
                Just a ->
                    a :: list

                Nothing ->
                    list

    in
    List.foldr f [] l
