class ContactMailer < ApplicationMailer

    def contact
        mail(to: 'yop@yopmail.com', subject: 'sujet de test')
    end

end
