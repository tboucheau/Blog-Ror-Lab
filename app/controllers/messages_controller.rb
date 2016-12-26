class MessagesController < ApplicationController

    def index
    end

    def demo
        ActionCable.server.broadcast('demo', {content: 'Salut'})
    end

end
