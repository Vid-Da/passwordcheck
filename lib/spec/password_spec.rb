require "rspec"
require_relative "../password.rb"

RSpec.describe "PasswordChecker" do
	before :all do
		@checker = PasswordChecker.new
	end

	it "should verify if an email has been introduced" do
		expect(@checker.check_password("", "password")).to be_falsy
	end

	it "should verify if a password has been introduced" do
		expect(@checker.check_password("email", "")).to be_falsy
	end

	it "should verify if password is longer than 7 characters" do
		expect(@checker.check_password("email", "123456")).to be_falsy
	end

end