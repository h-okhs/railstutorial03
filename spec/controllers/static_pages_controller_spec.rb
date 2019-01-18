require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  context "with render_views" do
    render_views

    let(:base_title) { 'Ruby on Rails Tutorial Sample App' }

    describe "title has right text" do
      it "get home" do
        get :home
        expect(response).to have_http_status(:success)
        assert_select "title", base_title
      end
      it "get help" do
        get :help
        expect(response).to have_http_status(:success)
        assert_select "title", "Help | " + base_title
      end
      it "get about" do
        get :about
        expect(response).to have_http_status(:success)
        assert_select "title", "About | " + base_title
      end
    end
  end
end
