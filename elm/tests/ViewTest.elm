module ViewTest exposing (..)

import Test exposing (..)
import Main exposing (view)
import Test.Html.Query as Query
import Test.Html.Selector exposing (text)


suite : Test
suite =
    describe "The view"
        [ describe "when the message is an error"
            [ test "should display an error" <|
                \() ->
                    let
                        model =
                            { message = Err "error" }

                        html =
                            view model
                    in
                        html
                            |> Query.fromHtml
                            |> Query.has [ text "error" ]
            ]
        , describe "when the message is ok"
            [ test "should display a value" <|
                \() ->
                    let
                        model =
                            { message = Ok "value" }

                        html =
                            view model
                    in
                        html
                            |> Query.fromHtml
                            |> Query.has [ text "value" ]
            ]
        ]
