class AdContactWorker

	@queue = :contact
	def self.perform (ad_id, current_id)
			user = User.find_by_id(current_id)
		    UserContact.connect(User.find_by_id(ad_id).email, user).deliver_now

	end

end