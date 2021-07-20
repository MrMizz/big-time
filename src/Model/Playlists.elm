module Model.Playlists exposing (Playlist, Playlists, Update, init)


type alias Playlists =
    { thatNewJazz : Playlist
    , tender : Playlist
    , valle : Playlist
    }


type alias Playlist =
    { descriptionIsOpen : Bool
    , description : String
    }


type alias Update =
    Playlists -> Playlist -> Playlists


init : Playlists
init =
    let
        thatNewJazz =
            """
            that new jazz
            """

        tender =
            """
            tender
            """

        valle =
            """
            valle
            """
    in
    { thatNewJazz = Playlist False thatNewJazz
    , tender = Playlist False tender
    , valle = Playlist False valle
    }
