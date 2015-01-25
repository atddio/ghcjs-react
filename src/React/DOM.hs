{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
module React.DOM where
import React.Internal
import React.Types
import GHCJS.Types

a_ :: Element ps
a_ = domElem ("a" :: JSString)

abbr_ :: Element ps
abbr_ = domElem ("abbr" :: JSString)

address_ :: Element ps
address_ = domElem ("address" :: JSString)

area_ :: Element ps
area_ = domElem ("area" :: JSString)

article_ :: Element ps
article_ = domElem ("article" :: JSString)

aside_ :: Element ps
aside_ = domElem ("aside" :: JSString)

audio_ :: Element ps
audio_ = domElem ("audio" :: JSString)

b_ :: Element ps
b_ = domElem ("b" :: JSString)

base_ :: Element ps
base_ = domElem ("base" :: JSString)

bdi_ :: Element ps
bdi_ = domElem ("bdi" :: JSString)

bdo_ :: Element ps
bdo_ = domElem ("bdo" :: JSString)

big_ :: Element ps
big_ = domElem ("big" :: JSString)

blockquote_ :: Element ps
blockquote_ = domElem ("blockquote" :: JSString)

body_ :: Element ps
body_ = domElem ("body" :: JSString)

br_ :: Element ps
br_ = domElem ("br" :: JSString)

button_ :: Element ps
button_ = domElem ("button" :: JSString)

canvas_ :: Element ps
canvas_ = domElem ("canvas" :: JSString)

caption_ :: Element ps
caption_ = domElem ("caption" :: JSString)

cite_ :: Element ps
cite_ = domElem ("cite" :: JSString)

code_ :: Element ps
code_ = domElem ("code" :: JSString)

col_ :: Element ps
col_ = domElem ("col" :: JSString)

colgroup_ :: Element ps
colgroup_ = domElem ("colgroup" :: JSString)

data_ :: Element ps
data_ = domElem ("data" :: JSString)

datalist_ :: Element ps
datalist_ = domElem ("datalist" :: JSString)

dd_ :: Element ps
dd_ = domElem ("dd" :: JSString)

del_ :: Element ps
del_ = domElem ("del" :: JSString)

details_ :: Element ps
details_ = domElem ("details" :: JSString)

dfn_ :: Element ps
dfn_ = domElem ("dfn" :: JSString)

dialog_ :: Element ps
dialog_ = domElem ("dialog" :: JSString)

div_ :: Element ps
div_ = domElem ("div" :: JSString)

dl_ :: Element ps
dl_ = domElem ("dl" :: JSString)

dt_ :: Element ps
dt_ = domElem ("dt" :: JSString)

em_ :: Element ps
em_ = domElem ("em" :: JSString)

embed_ :: Element ps
embed_ = domElem ("embed" :: JSString)

fieldset_ :: Element ps
fieldset_ = domElem ("fieldset" :: JSString)

figcaption_ :: Element ps
figcaption_ = domElem ("figcaption" :: JSString)

figure_ :: Element ps
figure_ = domElem ("figure" :: JSString)

footer_ :: Element ps
footer_ = domElem ("footer" :: JSString)

form_ :: Element ps
form_ = domElem ("form" :: JSString)

h1_ :: Element ps
h1_ = domElem ("h1" :: JSString)

h2_ :: Element ps
h2_ = domElem ("h2" :: JSString)

h3_ :: Element ps
h3_ = domElem ("h3" :: JSString)

h4_ :: Element ps
h4_ = domElem ("h4" :: JSString)

h5_ :: Element ps
h5_ = domElem ("h5" :: JSString)

h6_ :: Element ps
h6_ = domElem ("h6" :: JSString)

head_ :: Element ps
head_ = domElem ("head" :: JSString)

header_ :: Element ps
header_ = domElem ("header" :: JSString)

hr_ :: Element ps
hr_ = domElem ("hr" :: JSString)

html_ :: Element ps
html_ = domElem ("html" :: JSString)

i_ :: Element ps
i_ = domElem ("i" :: JSString)

iframe_ :: Element ps
iframe_ = domElem ("iframe" :: JSString)

img_ :: Element ps
img_ = domElem ("img" :: JSString)

input_ :: Element ps
input_ = domElem ("input" :: JSString)

ins_ :: Element ps
ins_ = domElem ("ins" :: JSString)

kbd_ :: Element ps
kbd_ = domElem ("kbd" :: JSString)

keygen_ :: Element ps
keygen_ = domElem ("keygen" :: JSString)

label_ :: Element ps
label_ = domElem ("label" :: JSString)

legend_ :: Element ps
legend_ = domElem ("legend" :: JSString)

li_ :: Element ps
li_ = domElem ("li" :: JSString)

link_ :: Element ps
link_ = domElem ("link" :: JSString)

main_ :: Element ps
main_ = domElem ("main" :: JSString)

map_ :: Element ps
map_ = domElem ("map" :: JSString)

mark_ :: Element ps
mark_ = domElem ("mark" :: JSString)

menu_ :: Element ps
menu_ = domElem ("menu" :: JSString)

menuitem_ :: Element ps
menuitem_ = domElem ("menuitem" :: JSString)

meta_ :: Element ps
meta_ = domElem ("meta" :: JSString)

meter_ :: Element ps
meter_ = domElem ("meter" :: JSString)

nav_ :: Element ps
nav_ = domElem ("nav" :: JSString)

noscript_ :: Element ps
noscript_ = domElem ("noscript" :: JSString)

object_ :: Element ps
object_ = domElem ("object" :: JSString)

ol_ :: Element ps
ol_ = domElem ("ol" :: JSString)

optgroup_ :: Element ps
optgroup_ = domElem ("optgroup" :: JSString)

option_ :: Element ps
option_ = domElem ("option" :: JSString)

output_ :: Element ps
output_ = domElem ("output" :: JSString)

p_ :: Element ps
p_ = domElem ("p" :: JSString)

param_ :: Element ps
param_ = domElem ("param" :: JSString)

picture_ :: Element ps
picture_ = domElem ("picture" :: JSString)

pre_ :: Element ps
pre_ = domElem ("pre" :: JSString)

progress_ :: Element ps
progress_ = domElem ("progress" :: JSString)

q_ :: Element ps
q_ = domElem ("q" :: JSString)

rp_ :: Element ps
rp_ = domElem ("rp" :: JSString)

rt_ :: Element ps
rt_ = domElem ("rt" :: JSString)

ruby_ :: Element ps
ruby_ = domElem ("ruby" :: JSString)

s_ :: Element ps
s_ = domElem ("s" :: JSString)

samp_ :: Element ps
samp_ = domElem ("samp" :: JSString)

script_ :: Element ps
script_ = domElem ("script" :: JSString)

section_ :: Element ps
section_ = domElem ("section" :: JSString)

select_ :: Element ps
select_ = domElem ("select" :: JSString)

small_ :: Element ps
small_ = domElem ("small" :: JSString)

source_ :: Element ps
source_ = domElem ("source" :: JSString)

span_ :: Element ps
span_ = domElem ("span" :: JSString)

strong_ :: Element ps
strong_ = domElem ("strong" :: JSString)

style_ :: Element ps
style_ = domElem ("style" :: JSString)

sub_ :: Element ps
sub_ = domElem ("sub" :: JSString)

summary_ :: Element ps
summary_ = domElem ("summary" :: JSString)

sup_ :: Element ps
sup_ = domElem ("sup" :: JSString)

table_ :: Element ps
table_ = domElem ("table" :: JSString)

tbody_ :: Element ps
tbody_ = domElem ("tbody" :: JSString)

td_ :: Element ps
td_ = domElem ("td" :: JSString)

textarea_ :: Element ps
textarea_ = domElem ("textarea" :: JSString)

tfoot_ :: Element ps
tfoot_ = domElem ("tfoot" :: JSString)

th_ :: Element ps
th_ = domElem ("th" :: JSString)

thead_ :: Element ps
thead_ = domElem ("thead" :: JSString)

time_ :: Element ps
time_ = domElem ("time" :: JSString)

title_ :: Element ps
title_ = domElem ("title" :: JSString)

tr_ :: Element ps
tr_ = domElem ("tr" :: JSString)

track_ :: Element ps
track_ = domElem ("track" :: JSString)

u_ :: Element ps
u_ = domElem ("u" :: JSString)

ul_ :: Element ps
ul_ = domElem ("ul" :: JSString)

var_ :: Element ps
var_ = domElem ("var" :: JSString)

video_ :: Element ps
video_ = domElem ("video" :: JSString)

wbr_ :: Element ps
wbr_ = domElem ("wbr" :: JSString)

circle_ :: Element ps
circle_ = domElem ("circle" :: JSString)

defs_ :: Element ps
defs_ = domElem ("defs" :: JSString)

ellipse_ :: Element ps
ellipse_ = domElem ("ellipse" :: JSString)

g_ :: Element ps
g_ = domElem ("g" :: JSString)

line_ :: Element ps
line_ = domElem ("line" :: JSString)

linearGradient_ :: Element ps
linearGradient_ = domElem ("linearGradient" :: JSString)

mask_ :: Element ps
mask_ = domElem ("mask" :: JSString)

path_ :: Element ps
path_ = domElem ("path" :: JSString)

pattern_ :: Element ps
pattern_ = domElem ("pattern" :: JSString)

polygon_ :: Element ps
polygon_ = domElem ("polygon" :: JSString)

polyline_ :: Element ps
polyline_ = domElem ("polyline" :: JSString)

radialGradient_ :: Element ps
radialGradient_ = domElem ("radialGradient" :: JSString)

rect_ :: Element ps
rect_ = domElem ("rect" :: JSString)

stop_ :: Element ps
stop_ = domElem ("stop" :: JSString)

svg_ :: Element ps
svg_ = domElem ("svg" :: JSString)

text_ :: Element ps
text_ = domElem ("text" :: JSString)

tspan_ :: Element ps
tspan_ = domElem ("tspan" :: JSString)
