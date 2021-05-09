module Model.State exposing (State(..), href, parse)

import Html
import Html.Attributes
import Model.Day as Day
import Model.MonthOfYear as MonthOfYear exposing (MonthOfYear)
import Model.Year as Year exposing (Year)
import Url
import Url.Parser as UrlParser exposing (..)


type State
    = About
    | Cal Year MonthOfYear
    | Day Year MonthOfYear Int
    | Error String


urlParser : UrlParser.Parser (State -> c) c
urlParser =
    UrlParser.oneOf
        [ UrlParser.map (Cal Year.init MonthOfYear.init) UrlParser.top
        , UrlParser.map (Cal Year.init MonthOfYear.init) (UrlParser.s "blog")
        , UrlParser.map Cal (yearParser </> monthParser)
        , UrlParser.map Day (yearParser </> monthParser </> UrlParser.int)
        , UrlParser.map About (UrlParser.s "about")
        ]


yearParser : UrlParser.Parser (Year -> b) b
yearParser =
    UrlParser.custom "YEAR" Year.fromString


monthParser : UrlParser.Parser (MonthOfYear -> b) b
monthParser =
    UrlParser.custom "MONTH" MonthOfYear.fromString


parse : Url.Url -> State
parse url =
    let
        target =
            -- The RealWorld spec treats the fragment like a path.
            -- This makes it *literally* the path, so we can proceed
            -- with parsing as if it had been a normal path all along.
            { url | path = Maybe.withDefault "" url.fragment, fragment = Nothing }
    in
    case UrlParser.parse urlParser target of
        Just state ->
            state

        Nothing ->
            Error "404; Invalid Path"


path : State -> String
path state =
    case state of
        About ->
            "#/about"

        Cal year moy ->
            "#/" ++ Year.toString year ++ "/" ++ MonthOfYear.toString moy

        Day year moy day ->
            "#/" ++ Year.toString year ++ "/" ++ MonthOfYear.toString moy ++ "/" ++ Day.print day

        Error _ ->
            "#/invalid"


href : State -> Html.Attribute msg
href state =
    Html.Attributes.href (path state)
