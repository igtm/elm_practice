import Html exposing (..)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)

{- TODO: -}

-- Model
type alias Model = { count: Int }

init : Model
init = { count = 0 }

-- Update

type Action = NoOp | Increment

update : Action -> Model -> Model
update action model =
	case action of
		NoOp -> model
		Increment ->
			{ model | count <- model.count + 1}

-- View

view: Signal.Address Action -> Model -> Html
view address model = 
	button
		[ onClick address Increment
		, style [("width", "100px"),("height", "100px"),("font-size", "large")]
		]
		[ text (toString model.count)]