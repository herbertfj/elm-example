module Main exposing (..)

import Html exposing (Html, text)


type alias Model =
    { message : Result String String
    }


type Msg
    = Success
    | Error


initialModel : Model
initialModel =
    { message = Ok "Your app is working!"
    }


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
    case model.message of
        Ok value ->
            text value

        Err error ->
            text error


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Success ->
            ( { model | message = Ok "Your app is working!" }, Cmd.none )

        Error ->
            ( { model | message = Err "Your app is broken!" }, Cmd.none )
