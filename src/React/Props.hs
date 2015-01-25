{-# LANGUAGE RankNTypes        #-}
{-# LANGUAGE OverloadedStrings #-}
module React.Props where
import Control.Lens
import Control.Monad
import Data.Text (Text, singleton)
import Data.HashMap.Strict (HashMap)
import GHCJS.Foreign
import GHCJS.Marshal
import GHCJS.Types
import React.Types (Prop(..), HandlerProp, ClipboardEvent, KeyboardEvent,
                    FocusEvent, FormEvent, MouseEvent, TouchEvent, UiEvent, WheelEvent)

defaultProp :: (ToJSRef a, FromJSRef a) => JSString -> Prop a
defaultProp n = Prop
  { propName = n
  , propRead = fromJSRef . castRef
  , propMake = fmap castRef . toJSRef
  }

handlerProp = HandlerProp

{-
data AcceptAttribute = Extension
                     | Mime
                     | Audio
                     | Video
                     | Image

accept :: [AcceptAttribute] -> Prop

-}

-- TODO: make it better than just Text
acceptCharset :: Prop JSString
acceptCharset = defaultProp "acceptCharset"

-- accessKey :: Prop Char
-- accessKey = defaultProp "accessKey" . lens getter setter
--   where
--     getter t = join $ fmap (fmap fst . (\x -> uncons (x :: Text)) . fromJSString) t
--     setter _ = fmap (toJSString . singleton)

action :: Prop JSString
action = defaultProp "action"

allowFullScreen :: Prop Bool
allowFullScreen = defaultProp "allowFullScreen"

allowTransparency :: Prop Bool
allowTransparency = defaultProp "allowTransparency"

alt :: Prop JSString
alt = defaultProp "alt"

async :: Prop Bool
async = defaultProp "async"

{-

-- "on" | "off"
autoComplete :: Prop Bool

autoPlay :: Prop Bool

cellPadding :: Prop Double

cellSpacing :: Prop Double

-- TODO something better than just Text
charSet :: Prop JSString

checked :: Prop Bool

classID :: Prop JSString
-}

className :: Prop JSString
className = defaultProp "className"

{-
cols :: Prop Int

colSpan :: Prop Int
content :: Prop JSString

-- "true" | "false"
contentEditable :: Prop Bool

-- TODO make CSS ID instead of Text
contextMenu :: Prop JSString

controls :: Prop Bool

coords :: Prop JSString

data CrossOrigin = Anonymous | UseCredentials

crossOrigin :: Prop CrossOrigin

-- TODO URI
data_ :: Prop JSString

-- TODO Make classy
dateTime :: Prop JSString

defer :: Prop Bool

data TextDirection = RightToLeft | LeftToRight | Auto

dir :: Prop TextDirection
-}

disabled :: Prop Bool
disabled = defaultProp "disabled"

{-
download :: Prop Bool

draggable :: Prop Bool

encType :: Prop Text

form :: Prop Text

formNoValidate :: Prop Bool

-- "1" | "0"
frameBorder :: Prop Bool

height :: Prop Int

hidden :: Prop Bool

-}
-- TODO URI
href :: Prop JSString
href = defaultProp "href"

{-
hrefLang :: Prop Text

-- TODO CSS ID
htmlFor :: Prop Text

data Equiv = ContentType | DefaultStyle | Refresh

httpEquiv :: Prop Equiv

icon :: Prop Text
-}

id_ :: Prop JSString
id_ = defaultProp "id"

label :: Prop JSString
label = defaultProp "label"

{-
lang :: Prop Text

list :: Prop Text

loop :: Prop Bool

manifest :: Prop Text

max :: Prop Int

maxLength :: Prop Int

media :: Prop Text

mediaGroup :: Prop Text

data FormMethod = GET | POST

method :: Prop FormMethod

min :: Prop Int

multiple :: Prop Bool

muted :: Prop Bool

name :: Prop Text

noValidate :: Prop Bool

open :: Prop Bool

pattern :: Prop Text

placeholder :: Prop Text

-- TODO URI
poster :: Prop Text 

data Preload = PreloadNone | PreloadMetadata | PreloadAuto

preload :: Prop Preload

radioGroup :: Prop Text

readOnly :: Prop Bool
-}
rel :: Prop JSString
rel = defaultProp "rel"

{-
required :: Prop Bool
-}

role :: Prop JSString
role = defaultProp "role"

{-
rows :: Prop Int

rowSpan :: Prop Int

data Sandbox = AllowSameOrigin | AllowTopNavigation | AllowForms | AllowPopups | AllowScripts | AllowPointerLock

sandbox :: Prop Sandbox

data Scope = Row | Col | RowGroup | ColGroup

scope :: Prop Scope

-- "yes" | "no"
scrolling :: Prop Bool

seamless :: Prop Bool

selected :: Prop Bool

shape :: Prop Text

size :: Prop Int

sizes :: Prop Text

span :: Prop Int

-- "true" | "false"
spellCheck :: Prop Text

src :: Prop Text
srcDoc :: Prop Text
srcSet :: Prop Text
start :: Prop Int
step :: Prop Int
style :: Prop (HashMap Text Text)
tabIndex :: Prop Int

data Target = Self | Blank | Parent | Top

target :: Prop Target

title :: Prop Text

type_ :: Prop Text

useMap :: Prop Text

value :: Prop Text

width :: Prop Int

data WMode = Transparent | Opaque

wmode :: Prop WMode

data AutoCapitalize = None | Sentences | Words | Characters

autoCapitalize :: Prop AutoCapitalize

-- "on" | "off"
autoCorrect :: Prop Bool

property :: Prop Text

itemProp :: Prop Text

itemScope :: Prop Text

itemType :: Prop Text
-}

dangerouslySetInnerHTML :: Prop JSString
dangerouslySetInnerHTML = defaultProp "dangerouslySetInnerHTML"

{-
cx
cy
d
dx
dy
fill
fillOpacity
fontFamily
fontSize
fx
fy
gradientTransform
gradientUnits
markerEnd
markerMid
markerStart
offset
opacity
patternContentUnits
patternUnits
points
preserveAspectRatio
r
rx
ry
spreadMethod
stopColor
stopOpacity
stroke
strokeDasharray
strokeLinecap
strokeOpacity
strokeWidth
textAnchor
transform
version
viewBox
x1
x2
x
y1
y2
y
aria
-}

onCopy :: HandlerProp ClipboardEvent 
onCopy = handlerProp "onCopy"

onCut :: HandlerProp ClipboardEvent
onCut = handlerProp "onCut"

onPaste :: HandlerProp ClipboardEvent
onPaste = handlerProp "onPaste"

onKeyDown :: HandlerProp KeyboardEvent
onKeyDown = handlerProp "onKeyDown"

onKeyPress :: HandlerProp KeyboardEvent
onKeyPress = handlerProp "onKeyPress"

onKeyUp :: HandlerProp KeyboardEvent
onKeyUp = handlerProp "onKeyUp"

onFocus :: HandlerProp FocusEvent
onFocus = handlerProp "onFocus"

onBlur :: HandlerProp FocusEvent
onBlur = handlerProp "onBlur"

onChange :: HandlerProp FormEvent
onChange = handlerProp "onChange"

onInput :: HandlerProp FormEvent
onInput = handlerProp "onInput"

onSubmit :: HandlerProp FormEvent
onSubmit = handlerProp "onSubmit"

onClick :: HandlerProp MouseEvent
onClick = handlerProp "onClick"

onDoubleClick :: HandlerProp MouseEvent
onDoubleClick = handlerProp "onDoubleClick"

onDrag :: HandlerProp MouseEvent
onDrag = handlerProp "onDrag"

onDragEnd :: HandlerProp MouseEvent
onDragEnd = handlerProp "onDragEnd"

onDragEnter :: HandlerProp MouseEvent
onDragEnter = handlerProp "onDragEnter"

onDragExit :: HandlerProp MouseEvent
onDragExit = handlerProp "onDragExit"

onDragLeave :: HandlerProp MouseEvent
onDragLeave = handlerProp "onDragLeave"

onDragOver :: HandlerProp MouseEvent
onDragOver = handlerProp "onDragOver"

onDragStart :: HandlerProp MouseEvent
onDragStart = handlerProp "onDragStart"

onDrop :: HandlerProp MouseEvent
onDrop = handlerProp "onDrop"

onMouseDown :: HandlerProp MouseEvent
onMouseDown = handlerProp "onMouseDown"

onMouseEnter :: HandlerProp MouseEvent
onMouseEnter = handlerProp "onMouseEnter"

onMouseLeave :: HandlerProp MouseEvent
onMouseLeave = handlerProp "onMouseLeave"

onMouseMove :: HandlerProp MouseEvent
onMouseMove = handlerProp "onMouseMove"

onMouseOut :: HandlerProp MouseEvent
onMouseOut = handlerProp "onMouseOut"

onMouseOver :: HandlerProp MouseEvent
onMouseOver = handlerProp "onMouseOver"

onMouseUp :: HandlerProp MouseEvent
onMouseUp = handlerProp "onMouseUp"

onTouchCancel :: HandlerProp TouchEvent
onTouchCancel = handlerProp "onTouchCancel"

onTouchEnd :: HandlerProp TouchEvent
onTouchEnd = handlerProp "onTouchEnd"

onTouchMove :: HandlerProp TouchEvent
onTouchMove = handlerProp "onTouchMove"

onTouchStart :: HandlerProp TouchEvent
onTouchStart = handlerProp "onTouchStart"

onScroll :: HandlerProp UiEvent
onScroll = handlerProp "onScroll"

onWheel :: HandlerProp WheelEvent
onWheel = handlerProp "onWheel"

