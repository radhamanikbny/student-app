class AdminMailer < ApplicationMailer
    default from: 'rails@example.com'
    
    def welcome_email
        @user = params[:user]
        mail(to: 'radhamani.basavaraju@accenture.com', subject: 'You are logged in to Student app')
    end
end
