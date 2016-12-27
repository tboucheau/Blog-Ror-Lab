App.messages = App.cable.subscriptions.create "MessagesChannel",
  connected: ->
    $(document).on 'keypress', '#message', (event) =>
        if event.keyCode is 13
            @perform 'speak', {message: message}
            event.target.value = ""
            event.preventDefault()

disconnected: ->
    # Called when the subscription has been terminated by the server

received: (data) ->
    $('#messages').append(data.message)


