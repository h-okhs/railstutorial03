require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  context "with render_views" do
    render_views

    let(:base_title) { 'Ruby on Rails Tutorial Sample App' }

    describe "GET root" do
      it "title has right text" do
        get :home
        expect(response).to have_http_status(:success)
        assert_select "title", "Home | #{base_title}"
      end
    end
  end
end
