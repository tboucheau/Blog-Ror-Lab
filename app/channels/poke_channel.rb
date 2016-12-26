class PokeChannel < ApplicationCable::Channel
    def subscribed
        stream_from 'poke'
    end

    def unsubscribed
        # Any cleanup needed when channel is unsubscribed
    end

    def poke
        ActionCable.server.broadcast('poke', {})
    end
end
