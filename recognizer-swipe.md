---
layout: default
title: Swipe recognizer
---

# Hammer.Swipe(options)
Recognized when the pointer is moving fast (velocity), with enough distance in the allowed direction.

**NB:** When the manager instance is created using default preset
(with `new Hammer()`), the pan and swipe recognizers are configured to
only detect _horizontal_ gestures.

| Option    | Default  | Description       |
|-----------|----------|-------------------|
| event     | `"swipe"`    | Name of the event. |
| pointers  | `1`        | Required pointers. |
| threshold | `10`       | Minimal distance required before recognizing. |
| direction | `DIRECTION_HORIZONTAL` | When the instance is created with default preset. |
|           | `DIRECTION_ALL` | When recognizer is added explicitly. |
| velocity  | `0.3`      | Minimal velocity required before recognizing, unit is in px per ms. |

## Events
- swipe, together with all of below
- swipeleft
- swiperight
- swipeup
- swipedown

