require 'spec_helper'

describe User do

	before(:each) do
		@attr = { :name => "Example User",
                  :email => "example@gmail.com",
                  :password => "foobar",
                  :password_confirmation => "foobar"
                }
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

    describe "passwords" do

        before(:each) do
            @user = User.new(@attr)
        end

        it "should have a password attribute" do
            @user.should respond_to(:password)            
        end

        # it "should have a password confirmation attribute" do
        #     @user.should respond_to(:password_confirmation)
        # end

    end

    describe "password validations" do

        it "should require a password" do
            User.new(@attr.merge(:password => "", :password_confirmation => "")).should_not be_valid
        end

        it "should require a matching password_confirmation" do
            User.new(@attr.merge(:password_confirmation => "invalid")).should_not be_valid
        end

        it "should reject short passwords" do
            short = "a"*5
            hash = @attr.merge(:password => short, :password_confirmation => short)
            User.new(hash).should_not be_valid
        end

        it "should reject long passwords" do
            long = "a"*41
            hash = @attr.merge(:password => long, :password_confirmation => long)
            User.new(hash).should_not be_valid
        end
    end

    describe "password encription" do

        before(:each) do
            @user = User.create!(@attr)
        end

        it "should have an encrypted password attribute" do
            @user.should respond_to(:encrypted_password)
        end

        it "should set the encrypted password attribute" do
            @user.encrypted_password.should_not be_blank
        end

        describe "has_password? method" do
            it "should exist" do
                @user.should respond_to(:has_password?)
            end

            it "should return true if the passwords match" do
                @user.has_password?(@attr[:password]).should be_true
            end

            it "should return false when passwords dont match" do
                @user.has_password?("invalid").should be_false
            end

            it "should have a salt" do
                @user.should respond_to(:salt)
            end
        end

        describe "authenticate method" do
            it "should exist" do
                User.should respond_to(:authenticate)
            end

            it "should return nil on email/password mismatch" do
                User.authenticate(@attr[:email],"wrongpass").should be_nil
            end

            it "should return nil for email address with no user" do
                User.authenticate("foo@bar.com", @attr[:password])
            end

            it "should return user for email/user match" do
                User.authenticate(@attr[:email],@attr[:password]) == @user
            end
        end


    end
end
