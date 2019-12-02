class UserMailer < ApplicationMailer
    
    default	:from => "Matthew Bennett <matthew@thespainreport.es>"
    
    def password_link(user)
        @user = user
        
        headers 'X-SES-CONFIGURATION-SET' => "Emails"
        mail(to: @user.email, subject: "Password reset: click this link to choose a new password")
    end
    
    def password_link_es(user)
        @user = user
        
        headers 'X-SES-CONFIGURATION-SET' => "Emails"
        mail(to: @user.email, subject: "Clave nueva: haga clic en este enlace para elegir una clave nueva")
    end
    
    def welcome_link(user)
        @user = user
        
        headers 'X-SES-CONFIGURATION-SET' => "Emails"
        mail(to: @user.email, subject: "Welcome: click this link to confirm your email")
    end
    
    def welcome_link_es(user)
        @user = user
        
        headers 'X-SES-CONFIGURATION-SET' => "Emails"
        mail(to: @user.email, subject: "Bienvenido: haga clic en este enlace para confirmar su correo")
    end
    
    def user_alert(user, user_subject, user_message)
        @user = user
        @subject = user_subject
        @message = user_message
        
        headers 'X-SES-CONFIGURATION-SET' => "Emails"
        mail(to: @user, subject: @subject)
    end
    
    def admin_alert(admin_subject, admin_message)
        @subject = admin_subject
        @message = admin_message
        
        headers 'X-SES-CONFIGURATION-SET' => "Emails"
        mail(to: "matthew@thespainreport.es", subject: @subject)
    end
end