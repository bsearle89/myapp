class UserMailer < ApplicationMailer
	default from: "admin@be-spoke.com"

	def contact_form(email, name, message)
		mail(to: 'br.searle89@gmail.com',
			 subject: "A new contact form message from #{name}",
			 body: "You have a new message from #{email} with the following messsage: #{message}")
	end

	def payment_confirmation(email, product, message)
		mail(to: email,
			 subject: "Purchase Confirmation",
			 body: "Thank you for purchasing #{product.name}! We hope you enjoy your new bike!")
	end
end
