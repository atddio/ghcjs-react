{-# LANGUAGE RankNTypes        #-}
{-# LANGUAGE OverloadedStrings #-}
module React.Attributes where
import Control.Lens
import Control.Monad
import Data.Text (Text, singleton)
import Data.HashMap.Strict (HashMap)
import GHCJS.Foreign
import GHCJS.Types
import React.Types (Prop', Prop)

present :: Lens' (Maybe JSString) Bool
present = lens getter setter
  where
    getter Nothing = False
    getter (Just _) = True

    setter _ False = Nothing
    setter _ True = Just ""

jsString :: (ToJSString a, FromJSString a) => Iso' a JSString
jsString = iso toJSString fromJSString

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
acceptCharset = at "acceptCharset"

accessKey :: Prop Char
accessKey = at "accessKey" . lens getter setter
  where
    getter t = join $ fmap (fmap fst . (\x -> uncons (x :: Text)) . fromJSString) t
    setter _ = fmap (toJSString . singleton)

action :: Prop JSString
action = at "action"

allowFullScreen :: Prop' Bool
allowFullScreen = at "allowFullScreen" . present

allowTransparency :: Prop' Bool
allowTransparency = at "allowTransparency" . present

alt :: Prop JSString
alt = at "alt"

async :: Prop' Bool
async = at "async" . present

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
className = at "className"

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

disabled :: Prop' Bool
disabled = at "disabled" . present

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
href = at "href"

{-
hrefLang :: Prop Text

-- TODO CSS ID
htmlFor :: Prop Text

data Equiv = ContentType | DefaultStyle | Refresh

httpEquiv :: Prop Equiv

icon :: Prop Text
-}

id_ :: Prop JSString
id_ = at "id"

label :: Prop JSString
label = at "label"

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
rel = at "rel"

{-
required :: Prop Bool
-}

role :: Prop JSString
role = at "role"

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
dangerouslySetInnerHTML = at "dangerouslySetInnerHTML"

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

casted :: Functor f => Lens' (f (JSRef a)) (f (JSRef b))
casted = lens (fmap castRef) (\_ b -> fmap castRef b)

prop :: Text -> Prop (JSRef a)
prop t = at t . casted


