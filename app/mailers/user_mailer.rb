class UserMailer < ApplicationMailer
	default from: "admin@be-spoke.com"

	def contact_form(email, name, message)
		mail(:to => 'br.searle89@gmail.com',
			 :subject => "A new contact form message from #{name}",
			 :body => "You have a new message from #{email} with the following messsage: #{message}")
	end

	def signup_confirmation(email)
		mail(:to => user.email,
			 :subtject => "Welcome!",
			 :body => "Thank you for creating your account with us!")
	end
end
