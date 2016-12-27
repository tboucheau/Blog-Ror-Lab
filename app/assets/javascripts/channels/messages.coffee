App.messages = App.cable.subscriptions.create "MessagesChannel",
  connected: ->
    $(document).on 'keypress', '#message', (event) =>
        if event.keyCode is 13
            @perform 'speak', {message: message}
            event.target.value = ""
            event.preventDefault()
    # Called when the subscription is ready for use on the server

disconnected: ->
    # Called when the subscription has been terminated by the server

received: (data) ->
    console.log(data.message)
    $('#messages').append(data.message)
    # Called when there's incoming data on the websocket for this channel

