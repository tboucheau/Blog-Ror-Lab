class MessagesController < ApplicationController

    def index
    end

    def demo
        ActionCable.server.broadcast('messages', {})
    end
end
