User.destroy_all
Category.destroy_all
Product.destroy_all

User.create("username":"Tom", "email":"tom@tom.com", "password":"tomtom", "admin": false)
User.create("username":"Tim", "email":"tim@tim.com", "password":"timtim", "admin": true)

Category.create("name":"Hampsters", "product_id": 2)
Category.create("name":"Hampsters", "product_id": 3)
Category.create("name":"Hampsters", "product_id": 4)
Category.create("name":"Hampsters", "product_id": 5)
Category.create("name":"Hampsters", "product_id": 6)
Category.create("name":"Cat", "product_id": 1)

Product.create("name":"James","description":"Not a hampster.","image":"http://www.kongsbergvet.no/uploads/6/1/3/4/6134802/299713301.jpg","price":20.99,"quantity":2, "category_id": 2)
Product.create("name":"Frank","description":"Number 5 guy on campus","image":"https://photosfine.files.wordpress.com/2012/04/hamster-white-background-5.jpg","price":6.88,"quantity":30, "category_id": 1)
Product.create("name":"Phillip","description":"this guy be crazy!","image":"http://www.smallanimalchannel.com/images/articles/hamster/hamster168-120216-bg.jpg","price":6.55,"quantity":40, "category_id": 1)
Product.create("name":"Jake","description":"from a state farm","image":"https://happier.imgix.net/static/img/blog/february2015/20150202-because-tiny-hamsters-eating-anything-wins-the-internet.jpg","price":4.99,"quantity":25, "category_id": 1)
Product.create("name":"Steve","description":"he's IS the best...","image":"http://www.petscorner.co.uk/petopedia/wp-content/uploads/syrian-hamster-4.jpg","price":0.99,"quantity":1000, "category_id": 1)
Product.create("name":"Charles","description":"in charge","image":"http://www.petwebsite.com/hamsters/hamsters_images/hamster_000002566309.jpg","price":100.11,"quantity":1, "category_id": 1)
