---
layout: default
title: Pan recognizer
---

# Hammer.Pan(options)
Recognized when the pointer is down and moved in the allowed direction.

**NB:** When the manager instance is created using default preset
(with `new Hammer()`), the pan and swipe recognizers are configured to
only detect _horizontal_ gestures.

| Option    | Default  | Description       |
| -----------|----------|-------------------|
| event     | `"pan"`      | Name of the event. |
| pointers  | `1`        | Required pointers. 0 for all pointers. |
| threshold | `10`       | Minimal pan distance required before recognizing. |
| direction | `DIRECTION_HORIZONTAL` | When the instance is created with default preset. |
|           | `DIRECTION_ALL` | When recognizer is added explicitly. |

## Events
- pan, together with all of below
- panstart
- panmove
- panend
- pancancel
- panleft
- panright
- panup 
- pandown

