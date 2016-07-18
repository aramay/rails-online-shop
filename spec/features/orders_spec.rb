RSpec.feature "Orders", type: :feature, js: true do
    before(:each) do
     #product = Product.create("name":"James","description":"Not a hampster.","image":"http://www.kongsbergvet.no/uploads/6/1/3/4/6134802/299713301.jpg","price":20.99,"quantity":2)
      @admin = User.create("email":"tim@tim.com", "password":"timtimtim", "admin": true)
      #@order = Order.new(subtotal: 20.99, tax: 1, shipping: 1, total: 22.99)
      visit 'users/sign_in'
      fill_in 'user[email]', with: @admin.email
      fill_in 'user[password]', with: @admin.password
      click_button 'Log in'
    end

  describe "#admin w/read, create, update and delete" do
    it "should access the products route" do
      visit "/admin/order"
      expect(page).to have_content("List of Orders")
    end


    it "should access the products route" do
      visit "/admin/order/new"
      expect(page).to have_content("New Order")
    end

#   it "should access the products route" do
#     visit "/admin/order/edit"
#     expect(page).to have_content("Edit Order")
#   end


#   it "should create a new order" do
#     visit "/admin/order/new"

#     fill_in 'order[subtotal]', with: 1
#     fill_in 'order[tax]', with: 1
#     fill_in 'order[shipping]', with: 1
#     fill_in 'order[total]', with: 1
#     click_button 'Save'

#     expect(Order.find(1).tax).to eq 1
#   end

#   it "should edit an existing order" do
#     visit "/admin/order/1/edit"
#     fill_in 'order[tax]', with: 2
#     click_button 'Save'

#     expect(Order.find(1).tax).to eq 2
#   end

#   it "should delete an existing product" do
#     visit "/admin/order"
#     click_link('', :href => '/admin/order/1/delete')
#     click_button "Yes, I'm sure"
#     expect(Order.all.count).to eq 0
#   end


  end
end
