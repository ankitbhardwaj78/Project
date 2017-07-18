class Newcourse < ApplicationMailer


	def detail(material)

		semester=material.semester
		@subject=material.subject
		users=User.where(semester: semester)
		users.each do |user|
			@username=user.username
			@greeting = "Hi"
			mail to: user.email, subject: "This is a test email"

		end

	end
end
