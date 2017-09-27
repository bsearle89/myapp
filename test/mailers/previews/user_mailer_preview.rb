# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
	def contact_form (email, name, message)
	@message = message
	mail(from: email,
		to: 'br.searle89@gmail.com',
		subject: "Anew contact form message from #{name}")
	end
end