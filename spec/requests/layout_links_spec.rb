require 'spec_helper'

describe "LayoutLinks" do

  it "should have the home page at '/'" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    get '/'
    response.should have_selector('title', :content => 'Home')
  end
  
  it "should have a contact page at '/contact'" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    get '/contact'
    response.should have_selector('title', :content => 'Contact')
  end

  it "should have a about page at '/about'" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    get '/about'
    response.should have_selector('title', :content => 'About')
  end

  it "should have a help page at '/help'" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    get '/help'
    response.should have_selector('title', :content => 'Help')
  end

  it "should have a signup page at '/signup'" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    get '/signup'
    response.should have_selector('title', :content => 'Sign up')
  end

  it "should have right links on the layout" do
    visit root_path
    response.should have_selector('title', :content => 'Home')
    click_link "About"
    response.should have_selector('title', :content => 'About')
    click_link "Contact"
    response.should have_selector('title', :content => 'Contact')
    click_link "Home"
    response.should have_selector('title', :content => 'Home')
    click_link "Sign Up now!"
    response.should have_selector('title', :content => 'Sign up')
    response.should have_selector('a[href="/"]>img')
  end

  it "should have a signin page at '/signin'" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    get '/signin'
    response.should have_selector('title', :content => 'Sign in')
  end
  
  describe "when not signed in" do

    it "should have signin link" do
      visit root_path
      response.should have_selector("a", :href => signin_path,
                                         :content => "Sign in")
    end
  end

    describe "when signed in" do

    before(:each) do
      @user = Factory(:user)
      visit signin_path
      fill_in :email,  :with => @user.email
      fill_in :password, :with => @user.password
      click_button
    end

    it "should have signout link" do
      visit root_path
      response.should have_selector("a", :href => signout_path,
                                         :content => "Sign out")
    end

    it "should have a profile link" do
      visit root_path
      response.should have_selector("a", :href => user_path(@user),
                                         :content => "Profile")
    end

  end
end

