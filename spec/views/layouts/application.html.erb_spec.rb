require "rails_helper"

RSpec.describe "layouts/application", type: :view do
  pending "add some examples to (or delete) #{__FILE__}"

  subject { render :home }

  describe "リンクが正しい" do
    it { should have_link("/help") }
  end
end
