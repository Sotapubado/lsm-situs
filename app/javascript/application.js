
// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import jquery from "jquery"
window.$ = window.jQuery = jquery
import * as bootstrap from "bootstrap"
window.bootstrap = bootstrap

import './custom/test.js';

