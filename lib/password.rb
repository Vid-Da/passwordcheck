require "rspec"

class PasswordChecker

	def check_password(email,password)
		email != "" && password != "" && password.length > 7
	end

end