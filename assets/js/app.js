/*
 * Welcome to your app's main JavaScript file!
 *
 * We recommend including the built version of this JavaScript file
 * (and its CSS file) in your base layout (base.html.twig).
 */

import React from 'react';
import ReactDOM from 'react-dom';
import SearchBar from './SearchBar';

ReactDOM.render(
    <SearchBar />,
    document.getElementById('react-root')
);

