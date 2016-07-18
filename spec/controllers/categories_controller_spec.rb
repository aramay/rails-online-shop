require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  let(:category) { Category.create("name":"Cats") }
  context "GET show" do
    before do
      get :show, :id => category.id
    end
    it { is_expected.to respond_with :ok}
    it { is_expected.to render_template :show}
  end
end
