z = require 'zorium'

require './index.styl'

module.exports = class ModeSelectPage
  constructor: ->
    null

  render: =>
    goAndReload = (path) ->
      z.router.go path
      # Espera un tick para asegurar que la URL/route se actualiza antes del reload
      setTimeout((-> window.location.reload()), 20)

    classicBtn = z 'button', {
      onclick: -> goAndReload '/play'
      type: 'button'
      className: 'zp-button'
    }, z 'div', {className: 'zp-button__content'}, 'Jugar'

    zenBtn = z 'button', {
      onclick: -> goAndReload '/zen'
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
