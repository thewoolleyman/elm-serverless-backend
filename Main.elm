port module Main exposing (..)

import Platform exposing (program)
import Random


main =
    program
        { init = init
        , update = update
        , subscriptions = subscriptions
        }



-- MODEL


type alias Model =
    { dieFace : Int
    }


init : ( Model, Cmd Msg )
init =
    ( Model 1, Cmd.none )



-- UPDATE


type Msg
    = Roll
    | NewFace Int


port newFace : Int -> Cmd msg


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Roll ->
            ( model, Random.generate NewFace (Random.int 1 6) )

        NewFace dieFace ->
            ( model, newFace dieFace )


-- SUBSCRIPTIONS

port roll : (Bool -> msg) -> Sub Msg

subscriptions : Model -> Sub Msg
subscriptions model =
    roll Roll
