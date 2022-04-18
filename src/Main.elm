module Main exposing (main)

-- MAIN

import Browser
import Browser.Navigation as Nav
import Data.Traverse.Month as TraverseMonth
import Model.Model as Model exposing (Model)
import Model.Month as Month exposing (Month)
import Model.State as State exposing (State(..))
import Msg.Msg exposing (Msg(..), resetViewport)
import Sub.Sub as Sub
import Url
import View.About.About
import View.Cal.Cal
import View.Cal.Day
import View.Error.Error
import View.Playlists.Playlists
import View.Resume.Resume


main : Program () Model Msg
main =
    Browser.application
        { init = Model.init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.subs
        , onUrlChange = UrlChanged
        , onUrlRequest = LinkClicked
        }



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        UrlChanged url ->
            ( { model
                | state = State.parse url
                , url = url
              }
            , resetViewport
            )

        LinkClicked urlRequest ->
            case urlRequest of
                Browser.Internal url ->
                    ( model, Nav.pushUrl model.key (Url.toString url) )

                Browser.External href ->
                    ( model, Nav.load href )

        ResetViewport ->
            ( model, resetViewport )

        ClickedPlaylistDescription playlists ->
            ( { model | playlists = playlists }, Cmd.none )



-- VIEW


view : Model -> Browser.Document Msg
view model =
    let
        html =
            case model.state of
                About ->
                    View.About.About.view

                Cal year moy ->
                    let
                        maybeMonth : Maybe Month
                        maybeMonth =
                            TraverseMonth.month ( year, moy )
                    in
                    case maybeMonth of
                        Just month ->
                            View.Cal.Cal.view ( year, moy, month )

                        Nothing ->
                            View.Cal.Cal.void ( year, moy )

                Day year moy int ->
                    let
                        maybeMonth : Maybe Month
                        maybeMonth =
                            TraverseMonth.month ( year, moy )
                    in
                    case maybeMonth of
                        Just month ->
                            case Month.fromInt month int of
                                Just day ->
                                    View.Cal.Day.view ( year, moy, day ) month

                                Nothing ->
                                    View.Error.Error.view "404; Invalid Path (Day)"

                        Nothing ->
                            View.Cal.Cal.void ( year, moy )

                Error error ->
                    View.Error.Error.view error

                Playlists ->
                    View.Playlists.Playlists.view model.playlists

                Resume ->
                    View.Resume.Resume.view
    in
    { title = "the.tap.in"
    , body =
        [ html
        ]
    }
