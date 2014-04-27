uString = require 'underscore.string'
URI = require "URIjs"

# maps command names to actual function used
module.exports = 
  
  # these are all from [`underscore.string`](https://github.com/epeli/underscore.string)
  'clean': ->
    uString.clean(this)
  'trim': ->
    uString.trim(this)
  'swapCase': ->
    uString.swapCase(this)
  'capitalize': ->
    uString.capitalize(this)
  'titleize': ->
    uString.titleize(this)
  'camelize': ->
    uString.camelize(this)
  'classify': ->
    uString.classify(this)
  'underscored': ->
    uString.underscored(this)
  'dasherize': ->
    uString.dasherize(this)
  'humanize': ->
    uString.humanize(this)
  'slugify': ->
    uString.slugify(this)
  'stripTags': ->
    uString.stripTags(this)
  'escapeHTML': ->
    uString.escapeHTML(this)
  'unescapeHTML': ->
    uString.unescapeHTML(this)
    
  # some from [`URIjs`](https://github.com/medialize/URI.js)
  'encodeURI': ->
    URI.encode(this)
  'decodeURI': ->
    URI.decode(this)
    
  # and some home-made
  'double': ->
    this+this
