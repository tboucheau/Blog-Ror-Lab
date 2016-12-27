class MessagesChannel < ApplicationCable::Channel
    def subscribed
        stream_from 'messages'
    end

    def speak(data)
      ActionCable.server.broadcast 'demo', message: data.message

    end
end
