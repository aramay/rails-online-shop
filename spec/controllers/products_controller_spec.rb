require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  let(:product) { Product.create(name: "Charles", description: "A hampster", price: 0, quantity: 1, image: "http://www.kendavis.com/wordpress/wp-content/uploads/2013/08/Hamster.jpg") }
  context "GET index" do
    before do
      get :index
    end
    it { is_expected.to respond_with :ok}
    it { is_expected.to render_template :index}
  end

  context "GET new" do
    before do
      get :new
    end
    it { is_expected.to respond_with(200)}
  end

  context "GET edit" do
    before do
      get :edit, :id => product.id
    end
    it { is_expected.to respond_with(200)}
  end

  context "GET show" do
    before do
      get :show, :id => product.id
    end
    it { is_expected.to respond_with :ok}
    it { is_expected.to render_template :show}
  end

end

