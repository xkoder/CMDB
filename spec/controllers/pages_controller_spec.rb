require 'spec_helper'

describe PagesController do
render_views

  before(:each) do
    @basetitle = StaticPages
  end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have right title" do
      get 'home'
      response.should have_selector("title", :content => "#{@basetitle} | Home")
    end  
    it "should have non blank body" do
      get 'home'
      response.body.should_not =~ /<body>\s*<\/body>/
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
    it "should have right title" do
      get 'contact'
      response.should have_selector("title", :content => "#{@basetitle} | Contact")
    end  
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
    it "should have right title" do
      get 'about'
      response.should have_selector("title", :content => "#{@basetitle} | About")
    end  
  end

  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
    
    it "should have right title" do
      get 'help'
      response.should have_selector("title", :content => "#{@basetitle} | Help")
    end  
  end


end
