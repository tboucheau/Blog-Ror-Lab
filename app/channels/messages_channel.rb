class MessagesChannel < ApplicationCable::Channel
    def subscribed
        stream_from 'messages'
    end

    def speak(data)
        partial_message = ApplicationController.render(partial: 'messages/message', locals: {
            message: data['message']
            })
        ActionCable.server.broadcast 'messages', message: data['message']
    end
end
