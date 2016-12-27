class ContactMailer < ApplicationMailer

    def contact(post)
        @post = post
        mail(from: 'site@rubyonrails.fr', to: 'boucheau.tony@neuf.fr', subject: 'sujet de test')
    end

end
