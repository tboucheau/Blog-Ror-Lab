App.messages = App.cable.subscriptions.create "MessagesChannel",
  connected: ->
    $(document).on 'keypress', '#message', (event) =>
        if event.keyCode is 13
            this.perform('speak', {})
            event.target.value = ""
            event.preventDefault()
    # Called when the subscription is ready for use on the server

disconnected: ->
    # Called when the subscription has been terminated by the server

received: (data) ->
    $('#messages').append('azeaeazeaze')

