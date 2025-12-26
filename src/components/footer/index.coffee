z = require 'zorium'

require './index.styl'

module.exports = class Footer
  constructor: ->
    null

  render: ({onRestart, onBack}) =>
    backBtn = z 'button', {
      onclick: onBack
      type: 'button'
      className: 'zp-button'
    }, z 'div', {className: 'zp-button__content'}, 'volver'

    restartBtn = z 'button', {
      onclick: onRestart
      type: 'button'
      className: 'zp-button'
    }, z 'div', {className: 'zp-button__content'}, 'reiniciar'

    z '.z-footer', [
      z '.left', [
        backBtn
        restartBtn
      ]
    ]
