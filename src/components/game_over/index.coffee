z = require 'zorium'
Button = require 'zorium-paper/button'

Score = require '../../models/score'

require './index.styl'

module.exports = class GameOver
  constructor: ->
    @state = z.state
      $shareBtn: new Button()
      $againBtn: new Button()

  render: =>
    {$shareBtn, $againBtn} = @state

    lastScore = Score.getLast()
    bestScore = Score.getBest()

    z '.z-game-over',
      z '.current-score', '' + lastScore
      z '.current-label', 'SCORE'
      z '.divider'
      z '.best-score', '' + bestScore
      z '.best-label', 'BEST'
      z '.buttons',
        z '.button',
          z $shareBtn,
            onclick: ->
              Clay('client.share.any', {
                text: "I scored #{lastScore} in Zop!
                       http://zop.zolmeister.com"
              })
            text:
              z 'div',
                {style: paddingRight: '24px'}
                'share score'
        z '.button',
          z $againBtn,
            onclick: ->
              z.router.go '/'
            text:
              z 'div',
                {style: paddingRight: '24px'}
                'play again'
