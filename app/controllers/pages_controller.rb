class PagesController < ApplicationController

    def home
        ContactMailer.contact(Post.first).deliver_later
    end
end
