z = require 'zorium'

require './index.styl'

module.exports = class ModeSelectPage
  constructor: ->
    null

  render: =>
    classicBtn = z 'button', {
      onclick: -> z.router.go '/play'
      type: 'button'
      className: 'zp-button'
    }, z 'div', {className: 'zp-button__content'}, 'Jugar'

    zenBtn = z 'button', {
      onclick: -> z.router.go '/zen'
      type: 'button'
      className: 'zp-button'
    }, z 'div', {className: 'zp-button__content'}, 'Jugar'

    z '.z-mode-select', [
      z '.title', 'EduZop'
      z '.subtitle', 'Selecciona un modo'
      z '.cards', [
        z '.card', [
          z '.card-title', 'Clásico'
          z '.card-desc', 'Tiempo y puntuación. A los 20 puntos se ocultan los colores.'
          classicBtn
        ]
        z '.card', [
          z '.card-title', 'Zen'
          z '.card-desc', 'Sin tiempo ni puntuación. Solo conecta figuras.'
          zenBtn
        ]
      ]
    ]
