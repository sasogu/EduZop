z = require 'zorium'
Button = require 'zorium-paper/button'

require './index.styl'

module.exports = class Footer
  constructor: ->
    @state = z.state
      $shareBtn: new Button()
      $restartBtn: new Button()

  render: ({onRestart}) =>
    {$shareBtn, $restartBtn} = @state

    z '.z-footer',
      z '.left',
        z $restartBtn,
          onclick: onRestart
          $content: z 'div',
            {style: paddingRight: '24px'}
            'restart'
      z '.right',
        z $shareBtn,
          onclick: ->
            Clay('client.share.any', {
              text: 'Come play Zop! http://zop.zolmeister.com'
            })
          $content: z 'div',
            {style: paddingLeft: '24px'}
            'share'
