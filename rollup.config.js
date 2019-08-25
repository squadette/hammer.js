import babel from 'rollup-plugin-babel';
import pkg from './package.json';

const current_date = new Date();

const banner = `/*! ${pkg.name} - v${pkg.version} - ${current_date.getFullYear()}-${String(current_date.getMonth() + 1).padStart(2, '0')}-${String(current_date.getDate()).padStart(2, '0')}
 * ${pkg.homepage}
 *
 * Copyright (c)  ${pkg.author.name};
 * Licensed under the ${pkg.license} license */`;

export default {
  input: 'src/main.js',
  output: {
    file: 'hammer.js',
    format: 'es',
    intro: " (function(window, document, exportName, undefined) { \n'use strict';",
    outro: "})(window, document, 'Hammer');",
    banner: banner,
  },
  plugins: [ babel({ exclude: 'node_modules/**' }) ],
};
