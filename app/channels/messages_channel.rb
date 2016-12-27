class MessagesChannel < ApplicationCable::Channel
    def subscribed
        stream_from 'messages'
    end

    def speak(data)
      ActionCable.server.broadcast('messages', {data[message]})
    end
end
