module ExampleTest exposing (..)

import Test exposing (..)
import Fuzz exposing (int)
import Expect exposing (..)


suite : Test
suite =
    describe "An integer"
        [ describe "when specified"
            [ test "should equal itself" <|
                \() ->
                    5
                        |> equal 5
            ]
        , describe "when randomized"
            [ fuzz int "should equal itself" <|
                \integer ->
                    integer
                        |> equal integer
            ]
        ]
