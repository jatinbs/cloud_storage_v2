require 'rails_helper'

RSpec.describe StaticPagesController, :type => :controller do

  describe "GET #home" do

    it "responds successfully with HTTP 200" do
      get :home
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders template home" do
      get :home
      expect(response).to render_template("static_pages/home")
    end

  end

  describe "GET #about" do
    it "responds successfully with HTTP 200" do
      get :about
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders template home" do
      get :about
      expect(response).to render_template("static_pages/about")
    end
  end

end
