z = require 'zorium'

config = require '../../config'

require './index.styl'

module.exports = class ModeSelectPage
  constructor: ->
    null

  render: =>
    goAndReload = (path) ->
      z.router.go path
      # En desarrollo forzamos recarga para inicializar el canvas limpio.
      # En producción (GitHub Pages) NO recargamos porque /play y /relax no existen como archivos
      # y un reload puede acabar en 404.
      if config.ENV isnt config.ENVS.PROD
        setTimeout((-> window.location.reload()), 20)

    classicBtn = z 'button', {
      onclick: -> goAndReload '/play'
      type: 'button'
      className: 'zp-button'
    }, z 'div', {className: 'zp-button__content'}, 'Jugar'

    zenBtn = z 'button', {
      onclick: -> goAndReload '/relax'
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
          z '.card-title', 'Relax'
          z '.card-desc', 'Sin tiempo ni puntuación. Solo conecta figuras.'
          zenBtn
        ]
      ]
    ]
