z = require 'zorium'
_ = require 'lodash'

Game = require '../../components/game'

module.exports = class ZenPage
  constructor: ->
    @$game = new Game(mode: 'zen')

  render: =>
    z 'div',
      z @$game
