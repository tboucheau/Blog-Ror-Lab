class ContactMailer < ApplicationMailer

    def contact(post)
        @post = post
        mail(from:'site@rubyonrails.fr', to: 'opposite240@gmail.com', subject: 'sujet de test')
    end

end
