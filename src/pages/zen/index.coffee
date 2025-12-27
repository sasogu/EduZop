z = require 'zorium'
_ = require 'lodash'

Game = require '../../components/game'

module.exports = class ZenPage
  constructor: ->
    @state = z.state
      $game: new Game(mode: 'zen')

  render: =>
    {$game} = @state()
    z 'div',
      z $game
