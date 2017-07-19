# Preview all emails at http://localhost:3000/rails/mailers/newcourse
class NewcoursePreview < ActionMailer::Preview


	def detail
		Newcourse.detail "courserarails@gmail.com"
	end

	
end
