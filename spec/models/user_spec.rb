require 'spec_helper'

describe User do

	before(:each) do
		@attr = { :name => "Example User", :email => "example@gmail.com"}
	end

	it "should create a new instance given valid attributes" do
		User.create!(@attr)
    end

    it "should require a name" do
    	no_name_user = User.create(@attr.merge(:name => ""))
    	no_name_user.should_not be_valid
    end

    it "should reject names that are too long" do
    	long_name_user = User.create(@attr.merge(:name => "a"*51))
    	long_name_user.should_not be_valid
    end

    it "should accept a valid email" do
    	addresses = %w[user@foo.com the_user@foobar.org first.last@foo.jp]
    	addresses.each do |address|
    		valid_email_user = User.new(@attr.merge(:email => address))
    		valid_email_user.should be_valid
    	end
    end

    it "should reject an invalid email" do
    	addresses = %w[invalid_email the_user@foobar,org first.last#foo.jp]
    	addresses.each do |address|
    		invalid_email_user = User.new(@attr.merge(:email => address))
    		invalid_email_user.should_not be_valid
    	end
    end

    it "should reject duplicate email addresses" do
    	User.create!(@attr)
    	user_with_dup_email = User.new(@attr)
    	user_with_dup_email.should_not be_valid
    end

    it "should reject email address identical up to case" do
    	upcased_email = @attr[:email].upcase
    	User.create!(@attr)
    	user_with_dup_email = User.new(@attr.merge(:email => upcased_email))
    	user_with_dup_email.should_not be_valid
    end

end
