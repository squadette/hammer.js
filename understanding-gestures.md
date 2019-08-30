---
layout: default
title: Understanding gestures
---

# Understanding gestures

### Pt.I: Touch events

The only thing that the browser gives to your Javascript application
is a sequence of **touch events** (`touchstart`, `touchmove`, `touchend`,
`touchcancel`).  Basically, when your finger touches the screen you get
`touchstart`, when the finger moves you get `touchmove`, and when you
lift the finger from the screen you get `touchend`.

So, when you do any gesture such as tap, swipe or pinch, your
application will only get a sequence of touch events.  E.g., tap could
be just `touchstart` + `touchend` that happen within a short period of
time.  Swipe is `touchstart` + many `touchmove`'s with increasing
velocity + `touchend`, and so on.


### Pt. II: Recognizing gestures

Browser **does not** give you any events that directly correspond to
gestures, something like `tap`, `swipe` or `pinch`.

Your Javascript application must recognize gestures from the sequence
of touch events.  Basically, you need to implement a function that
analyzes the last event that happened and the sequence of preceding
events (with timing information) and decides if this looks like a
certain gesture.

For example, if it is `touchstart` + `touchend` and less than 100ms
passed between two events then it looks like a tap.  You can imagine
what it takes to detect more complicated gestures such as swipe (that
can happen in a different directions).

HammerJS is just one of the libraries that does exactly that:
recognizing gestures from the sequence of touch events.


### Pt. III: Browser gestures

However, browsers actually **do** recognize gestures, they just do not
share this information with you.  This is disappointing, if you think
about that: browsers have a lot of code that understands how the
device works and how operating system detects gestures.  But because
there is no accepted standard for that, you have to detect gestures
manually, as described above.


### Pt. IV: Default browser behavior

When the browser detects gesture in the sequence of touch events, it
normally does something that makes sense in this situation.

For example, tap generates the same event as mouse click would:
`click`.  Pinch-zoom allows you zoom the page for easier reading.
Vertical panning leads to scrolling the page.

If the web page does not know anything about touch events (or does not
bother) then it's going to work on touch devices in a way that people
expect.

### Pt. V: Disabling default browser behavior

Your application can actually disable *any* default browser behavior
if it thinks that this would be better.  Even the scrolling can be
disabled, even tapping on links.

Technically this is done either by calling `event.preventDefault()` on
one of the touch events, or by specifying certain CSS properties (see
below).

As the simplest example, if you listen for `touchstart` event and call
`preventDefault()` on all of them then your page will become
completely unresponsive on touch-based devices.

You have to understand very well what exactly gets disabled.  Suppose
that you have a laptop with touchscreen and a mouse.  You can take any
`<a>` tag and listen on `touchstart` event on this DOM element,
calling `preventDefault()` on it.  This will prevent default browser
behavior and stop generating `click` events.

If you tap on this element using touch screen, nothing will happen.
However, if you use the mouse and click on the link, it will work,
because mouse click generates `click` event directly.

