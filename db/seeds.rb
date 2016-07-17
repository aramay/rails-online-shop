User.destroy_all
Category.destroy_all
Product.destroy_all
OrderStatus.destroy_all
Order.destroy_all

# User.create("username":"Tom", "email":"tom@tom.com", "password":"tomtomtom", "admin": false)
User.create("email":"tom@tom.com", "password":"tomtomtom", "admin": false)
# User.create("username":"Tim", "email":"tim@tim.com", "password":"timtimtim", "admin": true)
User.create("email":"tim@tim.com", "password":"timtimtim", "admin": true)

Category.create("name":"Hampsters")
Category.create("name":"Cats")

Product.create("name":"James","description":"Not a hampster.","image":"http://www.kongsbergvet.no/uploads/6/1/3/4/6134802/299713301.jpg","price":20.99,"quantity":2)
Product.create("name":"Frank","description":"Number 5 guy on campus","image":"https://photosfine.files.wordpress.com/2012/04/hamster-white-background-5.jpg","price":6.88,"quantity":30)
Product.create("name":"Phillip","description":"this guy be crazy!","image":"http://www.smallanimalchannel.com/images/articles/hamster/hamster168-120216-bg.jpg","price":6.55,"quantity":40)
Product.create("name":"Jake","description":"from a state farm","image":"https://happier.imgix.net/static/img/blog/february2015/20150202-because-tiny-hamsters-eating-anything-wins-the-internet.jpg","price":4.99,"quantity":25)
Product.create("name":"Steve","description":"he's IS the best...","image":"http://www.petscorner.co.uk/petopedia/wp-content/uploads/syrian-hamster-4.jpg","price":0.99,"quantity":1000)
Product.create("name":"Charles","description":"in charge","image":"http://www.petwebsite.com/hamsters/hamsters_images/hamster_000002566309.jpg","price":100.11,"quantity":1)

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

#Order.create(subtotal: 20.99, tax: 1, shipping: 1, total: 22.99, order_status_id: 1)

#OrderItem.create(product_id: 1, order_id: 1, unit_price: 20.99, quantity: 1, total_price: 1)
