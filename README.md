# Hammer.js [![NPM Version][npm-image]][npm-url]

[![Build Status](https://travis-ci.org/squadette/hammer.js.svg)](https://travis-ci.org/squadette/hammer.js) [![NPM Downloads][downloads-image]][downloads-url]

## Support, Questions, and Collaboration

What's the plan with restarting Hammer.JS development?
[https://github.com/squadette/hammer.js/issues/1](https://github.com/squadette/hammer.js/issues/1).

[![Slack Status](https://hammerjs.herokuapp.com/badge.svg)](https://hammerjs.herokuapp.com/)

## Documentation

Visit [https://squadette.github.io/hammer.js](http://squadette.github.io/hammer.js) for detailed documentation (it's a fork of original website with accumulated fixes).

```js
// get a reference to an element
var stage = document.getElementById('stage');

// create a manager for that element
var mc = new Hammer.Manager(stage);

// create a recognizer
var Rotate = new Hammer.Rotate();

// add the recognizer
mc.add(Rotate);

// subscribe to events
mc.on('rotate', function(e) {
    // do something cool
    var rotation = Math.round(e.rotation);    
    stage.style.transform = 'rotate('+rotation+'deg)';
});
```

An advanced demo is available here: [http://codepen.io/runspired/full/ZQBGWd/](http://codepen.io/runspired/full/ZQBGWd/)


## Contributing

Read the [contributing guidelines](./CONTRIBUTING.md).

For PRs.

- Use [Angular Style commit messages](https://github.com/angular/angular.js/blob/v1.4.8/CONTRIBUTING.md#commit)
- Rebase your PR branch when necessary
- If you add a feature or fix a bug, please add or fix any necessary tests.
- If a new feature, open a docs PR to go with.

## Building

You can get the pre-build versions from the Hammer.js website, or do this by yourself running 
`yarn install && yarn run grunt build`

[npm-image]: https://img.shields.io/npm/v/@squadette/hammerjs.svg
[npm-url]: https://npmjs.org/package/@squadette/hammerjs

[travis-image]: https://travis-ci.org/squadette/hammer.js.svg?branch=master
[travis-url]: https://travis-ci.org/squadette/hammer.js

[downloads-image]: https://img.shields.io/npm/dm/@squadette/hammerjs.svg
[downloads-url]: https://npmjs.org/package/@squadette/hammerjs
