module Main exposing (Model, Msg(..), initialModel, main, update, view, viewInput, viewList, viewListItem, words)

import Browser
import Html exposing (Html, div, h1, input, li, text, ul)
import Html.Attributes exposing (type_, value)



-- Main


main =
    Browser.sandbox
        { init = initialModel
        , update = update
        , view = view
        }



-- Model


type alias Model =
    { inputText : String
    }


initialModel : Model
initialModel =
    { inputText = ""
    }



-- Update


type Msg
    = NoOp


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model



-- View


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text "Incremental Search" ]
        , viewInput model
        , viewList
        ]


viewInput : Model -> Html Msg
viewInput model =
    div []
        [ input [ type_ "text", value model.inputText ] []
        , text model.inputText
        ]


viewList : Html Msg
viewList =
    ul [] <|
        List.map viewListItem words


viewListItem : String -> Html Msg
viewListItem word =
    li [] [ text word ]



-- Data


words : List String
words =
    [ "designer", "detector", "operational", "west", "card", "uncertainty", "diet", "shaft", "motorist", "toll", "ground", "mystery", "pull", "explode", "deteriorate", "embrace", "half", "new", "rest", "lighter", "east", "goat", "ideology", "miss", "tribe", "abortion", "think", "stop", "disagreement", "mosque", "nap", "soul", "contrary", "table", "camera", "bird", "concentration", "agreement", "speech", "move", "put", "prospect", "appointment", "discount", "post", "touch", "gutter", "sail", "humanity", "division", "charter", "hospitality", "sweat", "chicken", "cope", "blonde", "folkmusic", "answer", "forest", "avant-garde", "strike", "symptom", "disappear", "temple", "elaborate", "meadow", "negligence", "worker", "lump", "equal", "halt", "connection", "site", "crude", "content", "water", "coffee", "continental", "contact", "conviction", "sword", "tactic", "tribute", "aware", "straighten", "ward", "classify", "extreme", "risk", "public", "bless", "established", "beneficiary", "full", "relaxation", "raid", "drink", "advance", "creditcard", "accessible", "due", "church", "throne", "joy", "incredible", "parade", "fruit", "forum", "pay", "line", "enlarge", "grow", "cast", "section", "north", "value", "ambiguous", "ambiguity", "revolution", "foster", "trainer", "object", "psychology", "curriculum", "regular", "dialect", "Europe", "passage", "vegetarian", "berry", "glory", "perception", "bulletin", "facade", "ask", "press", "page", "runner", "different", "knee", "umbrella", "maid", "microphone", "job", "cause", "penalty", "pat", "mouse", "hostility", "flat", "mislead", "hypothesis", "represent", "background", "snap", "toast", "row", "shatter", "aloof", "pride", "ordinary", "climate", "elbow", "corpse", "lake", "grave", "splurge", "laboratory", "predator", "size", "voter", "fall", "ritual", "march", "smile", "correspond", "panel", "conclusion", "killer", "analysis", "observer", "fear", "bounce", "pig", "poor", "design", "housing", "waterfall", "professional", "discipline", "privilege", "marble", "fly", "dorm", "offender", "calm", "willpower", "block", "valid", "blank", "brain", "leadership", "weak", "commission", "outer", "hesitate", "earthwax", "occasion", "mouth", "split", "hemisphere", "animal", "beef", "talk", "coach", "impound", "constellation", "habit", "dinner", "aviation", "corruption", "study", "degree", "back", "deck", "harmful", "conspiracy", "casualty", "van", "merchant", "tire", "infrastructure", "entertain", "haircut", "cart", "proof", "mist", "copy", "flex", "disturbance", "missile", "dead", "assertive", "bloodshed", "lover", "flash", "cable", "soup", "literacy", "enjoy", "constitutional", "sentence", "morning", "broccoli", "palm", "headline", "expectation", "groan", "jest", "clerk", "face", "fitness", "colleague", "enemy", "thank", "handy", "dash", "medicine", "guess", "drain", "implicit", "soar", "able", "cruelty", "precision", "sandwich", "favorable", "glance", "patent", "norm", "recycle", "neck", "instruction", "quotation", "tell", "knit", "suspicion", "rainbow", "care", "initiative", "science", "kick", "hook", "accumulation", "reduce", "monarch", "grace", "resort", "illness", "spell", "bond", "reliance", "profit", "demand", "print", "command", "hit", "lace", "terrace", "market", "pottery", "meeting", "harsh", "pipe", "reject", "review", "maximum", "problem", "chop", "pledge", "preoccupation", "tray", "commitment", "cry", "tasty", "display", "physical", "improve", "stool", "swarm", "remunerate", "emphasis", "shift", "direct", "dictate", "nest", "requirement", "adventure", "explicit", "graze", "eternal", "feign", "stake", "category", "dine", "kneel", "snub", "entertainment", "reasonable", "solid", "notebook", "gaffe", "cultivate", "peel", "summit", "pray", "teach", "shrink", "stall", "truth", "bridge", "chalk", "court", "responsible", "endorse", "theft", "ant", "principle", "subway", "recognize", "bother", "mailcarrier", "boom", "defendant", "comfort", "twitch", "freighter", "hierarchy", "surround", "ghost", "deposit", "metal", "leaflet", "temperature", "regret", "veteran", "brush", "mistreat", "democratic", "storage", "tear", "witness", "museum", "proclaim", "shell", "file", "activate", "summary", "novel", "increase", "circumstance", "theater", "orgy", "unlike", "lion", "infect", "notorious", "rung", "appendix", "engine", "refund", "trace", "brink", "sow", "offer", "draw", "cemetery", "privacy", "bet", "initial", "appear", "scrap", "chord", "nationalism", "staff", "man", "get", "information", "tourist", "trust", "closed", "diplomatic", "make", "dismissal", "defeat", "shelter", "snail", "integrated", "cycle", "function", "mutation", "share", "create", "meet", "last", "ghostwriter", "safari", "hobby", "breathe", "student", "trait", "recruit", "clique", "patch", "frog", "extract", "fog", "plastic", "turkey", "bank", "looting", "absence", "quarter", "vehicle", "craftsman", "hilarious", "decade", "progressive", "violation", "location", "faint", "ecstasy", "articulate", "challenge", "raise", "penetrate", "swell", "domestic", "thought", "expand", "craft", "seed", "ball", "abolish", "exhibition", "neighbour", "musical", "iron", "crouch", "current", "planet", "dimension", "artificial", "first", "unanimous", "trustee", "hallway", "balance", "abnormal", "helpless" ]
