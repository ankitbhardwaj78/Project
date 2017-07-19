class UserContact < ApplicationMailer
	def connect email, customer
		@customer = customer
		mail to: email, subject: "This is a test email"
	end
end
