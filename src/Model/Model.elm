module Model.Model exposing (Model, init)

import Browser.Navigation as Nav
import Model.Playlists as Playlists exposing (Playlists)
import Model.State as State exposing (State(..))
import Msg.Msg exposing (Msg(..))
import Url


type alias Model =
    { state : State
    , url : Url.Url
    , key : Nav.Key
    , playlists : Playlists
    }


init : () -> Url.Url -> Nav.Key -> ( Model, Cmd Msg )
init _ url key =
    ( { state = State.parse url
      , url = url
      , key = key
      , playlists = Playlists.init
      }
    , Cmd.none
    )
