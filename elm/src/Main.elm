module Main exposing (..)

import Html exposing (Html, text)


type alias Model = {}


type Msg
    = Success
    | Error


initialModel : Model
initialModel = {}


main : Program Never Model Msg
main =
    Html.program
        { init = ( initialModel, Cmd.none )
        , view = view
        , update = update
        , subscriptions = \model -> Sub.none
        }


view : Model -> Html Msg
view model =
    text "Your app is working!"


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        _ ->
            ( model, Cmd.none )
