User.destroy_all
Category.destroy_all
Product.destroy_all
OrderStatus.destroy_all
Order.destroy_all

# User.create("username":"Tom", "email":"tom@tom.com", "password":"tomtomtom", "admin": false)
User.create("email":"tom@tom.com", "password":"tomtomtom", "admin": false)
# User.create("username":"Tim", "email":"tim@tim.com", "password":"timtimtim", "admin": true)
User.create("email":"tim@tim.com", "password":"timtimtim", "admin": true)

User.create("email":"john@hamazon.com", "password":"12345678", "admin": false)

Category.create("name":"Hampsters")
Category.create("name":"Cats")

Product.create("name":"James","description":"Not a hampster.","image":"https://archive.org/download/kasper_341_hotmail_F-l/grid4.jpg","price":20.99,"quantity":2)
Product.create("name":"Frank","description":"Number 5 guy on campus","image":"https://archive.org/download/kasper_341_hotmail_F-l/grid5.jpg","price":6.88,"quantity":30)
Product.create("name":"Phillip","description":"this guy be crazy!","image":"https://archive.org/download/kasper_341_hotmail_F-l/grid6.jpg","price":6.55,"quantity":40)
Product.create("name":"Jake","description":"from a state farm","image":"https://archive.org/download/kasper_341_hotmail_F-l/grid7.jpg",
"price":4.99,"quantity":25)
Product.create("name":"Steve","description":"he's IS the best...","image":"https://archive.org/download/kasper_341_hotmail_F-l/grid8.jpg","price":0.99,"quantity":1000)
Product.create("name":"Charles","description":"in charge","image":"https://archive.org/download/kasper_341_hotmail_F-l/grid3.jpg","price":100.11,"quantity":1)

CategoryProduct.create(category_id:1, product_id:2)
CategoryProduct.create(category_id:1, product_id:3)
CategoryProduct.create(category_id:1, product_id:4)
CategoryProduct.create(category_id:1, product_id:5)
CategoryProduct.create(category_id:1, product_id:6)
CategoryProduct.create(category_id:2, product_id:1)
CategoryProduct.create(category_id:1, product_id:1)

OrderStatus.create(id: 1, name: "In Progress")
OrderStatus.create(id: 2, name: "Placed")
OrderStatus.create(id: 3, name: "Shipped")
OrderStatus.create(id: 4, name: "Cancelled")

# --  Sample Seeds for Order and OrderItem - Delete if necessary

Order.create(subtotal: 20.99, tax: 1, shipping: 1, total: 22.99, order_status_id: 1)
Order.create(subtotal: 40.99, tax: 1, shipping: 1, total: 42.99, order_status_id: 1)

OrderItem.create(product_id: 1, order_id: 1, unit_price: 20.99, quantity: 1, total_price: 1)
