class DemoChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'demo'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

end
