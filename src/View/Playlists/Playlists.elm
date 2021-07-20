module View.Playlists.Playlists exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class, height, src, style)
import Html.Events exposing (onClick)
import Model.Playlists exposing (Playlist, Playlists, Update)
import Msg.Msg exposing (Msg(..))
import View.Hero


view : Playlists -> Html Msg
view playlists =
    View.Hero.view (body playlists)


body : Playlists -> Html Msg
body playlists =
    let
        descriptionModal : Update -> Playlist -> Html Msg
        descriptionModal f playlist =
            let
                class_ : String
                class_ =
                    case playlist.descriptionIsOpen of
                        True ->
                            "modal is-active"

                        False ->
                            "modal"
            in
            Html.div
                [ class class_
                ]
                [ Html.div
                    [ class "modal-background"
                    ]
                    []
                , Html.div
                    [ class "modal-content"
                    ]
                    [ Html.div
                        [ class "container has-text-centered"
                        ]
                        [ Html.text playlist.description
                        ]
                    ]
                , Html.button
                    [ class "modal-close"
                    , onClick (ClickedPlaylistDescription (f playlists { playlist | descriptionIsOpen = False }))
                    ]
                    []
                ]

        open : Update -> Playlist -> Html Msg
        open f playlist =
            Html.button
                [ style "width" "100%"
                , height 50
                , onClick (ClickedPlaylistDescription (f playlists { playlist | descriptionIsOpen = True }))
                ]
                [ Html.div
                    []
                    [ Html.text "<desc press for </desc>"
                    ]
                ]

        embed : Update -> Playlist -> String -> Html Msg
        embed f playlist url =
            Html.div
                [ class "column is-6"
                ]
                [ open f playlist
                , descriptionModal f playlist
                , Html.iframe
                    [ src url
                    , style "width" "100%"
                    , height 380
                    , style "frameBorder" "0"
                    , style "allowtransparency" "true"
                    , style "allow" "encrypted-media"
                    ]
                    []
                ]

        one : Html Msg
        one =
            let
                f : Update
                f playlists_ playlist_ =
                    { playlists_ | thatNewJazz = playlist_ }
            in
            embed f playlists.thatNewJazz "https://open.spotify.com/embed/playlist/754yiFuN0kJCIfPAvbOnMU?theme=0"

        two : Html Msg
        two =
            let
                f : Update
                f playlists_ playlist_ =
                    { playlists_ | tender = playlist_ }
            in
            embed f playlists.tender "https://open.spotify.com/embed/playlist/38OnMQrMkmJbkUS9Z8xdJq"

        three : Html Msg
        three =
            let
                f : Update
                f playlists_ playlist_ =
                    { playlists_ | valle = playlist_ }
            in
            embed f playlists.valle "https://open.spotify.com/embed/playlist/006vvJAdRvQsHq0PHQSGHK"

        html =
            Html.div
                [ class "columns is-multiline"
                ]
                [ one
                , two
                , three
                ]
    in
    Html.div
        [ class "container"
        ]
        [ html
        ]
