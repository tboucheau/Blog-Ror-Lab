class ContactMailer < ApplicationMailer

    def contact(post)
        @post = post
        mail(to: 'yop@yopmail.com', subject: 'sujet de test')
    end

end
