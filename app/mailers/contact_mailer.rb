class ContactMailer < ApplicationMailer

    def contact(post)
        @post = post
        mail(from: 'boucheau.tony@neuf.fr', to: 'boucheau.tony@neuf.fr', subject: 'sujet de test')
    end

end
