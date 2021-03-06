module Main exposing (main)

import Browser
import Model exposing (Model)
import Update exposing (Msg, update)
import View exposing (view)


init : List String -> ( Model, Cmd Msg )
init hashes =
    ( { found = False
      , hashes = hashes
      , hash = ""
      }
    , Cmd.none
    )


main : Program (List String) Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }
