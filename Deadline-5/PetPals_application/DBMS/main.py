from flask import Flask,render_template,request,session,redirect,url_for,flash
from flask_sqlalchemy import SQLAlchemy
from sqlalchemy import func
from flask_login import UserMixin
from werkzeug.security import generate_password_hash,check_password_hash
from flask_login import login_user,logout_user,login_manager,LoginManager
from flask_login import login_required,current_user
from flask_mail import Mail
import json
from flask import Flask, render_template, request, session, redirect, url_for, flash
from flask_sqlalchemy import SQLAlchemy
from flask_login import UserMixin, login_user, logout_user, login_manager, LoginManager, login_required, current_user
from datetime import date
from sqlalchemy import Column, Integer, String, Date, ForeignKey
from sqlalchemy.orm import relationship
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()


#My db connection
local_server=True
app = Flask(__name__)

# this is for getting unique user access
login_manager=LoginManager(app)
login_manager.login_view='login'


@login_manager.user_loader
def load_user(user_id):
    return Credentials.query.get(int(user_id))



app.secret_key='mridu'
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+mysqlconnector://root:@localhost:3307/db2'
db=SQLAlchemy(app)



# SMTP MAIL SERVER SETTINGS

# app.config.update(
#     MAIL_SERVER='smtp.gmail.com',
#     MAIL_PORT='465',
#     MAIL_USE_SSL=True,
#     MAIL_USERNAME=params['gmail-user'],
#     MAIL_PASSWORD=params['gmail-password']
# )
# mail = Mail(app)



class User(db.Model):
    User_id = db.Column(db.Integer, primary_key=True)
    first_name = db.Column(db.String(50), nullable=True, default=None)
    last_name = db.Column(db.String(50), nullable=True, default=None)
    dd = db.Column(db.Integer, nullable=True, default=None)
    mm = db.Column(db.Integer, nullable=True, default=None)
    yyyy = db.Column(db.Integer, nullable=True, default=None)
    Email = db.Column(db.String(100), nullable=True, default=None)
    house_number = db.Column(db.String(45), nullable=True, default=None)
    street_name = db.Column(db.String(100), nullable=True, default=None)
    apt_number = db.Column(db.String(100), nullable=True, default=None)
    city = db.Column(db.String(45), nullable=True, default=None)
    state = db.Column(db.String(45), nullable=True, default=None)
    pincode = db.Column(db.Integer, nullable=True, default=None)

    # def __repr__(self):
    #     return f"User('{self.User_id}', '{self.first_name}', '{self.last_name}', '{self.Email}')"


class Credentials(UserMixin,db.Model):
    User_id = db.Column(db.Integer, db.ForeignKey('user.User_id'), primary_key=True)
    email = db.Column(db.String(100), nullable=False)
    password = db.Column(db.String(100))
    def get_id(self):
        return str(self.User_id)



class Pets(db.Model):
    Pet_ID = db.Column(db.Integer, primary_key=True)
    Name = db.Column(db.String(45), nullable=True, default=None)
    Breed = db.Column(db.String(45), nullable=True, default=None)
    Age = db.Column(db.Integer, nullable=True, default=None)
    Size = db.Column(db.String(45), nullable=True, default=None)
    Type = db.Column(db.String(45), nullable=True, default=None)

class UserPets(db.Model):
    user_pet_id = db.Column(db.Integer, primary_key=True)
    user_id = db.Column(db.Integer, db.ForeignKey('user.User_id'), nullable=False)
    pet_id = db.Column(db.Integer, db.ForeignKey('pets.Pet_ID'), nullable=False)
    acquisition_date = db.Column(db.Date)

class Service(db.Model):
    Service_ID = db.Column(db.Integer, primary_key=True)
    Name = db.Column(db.String(45), nullable=True, default=None)
    Price = db.Column(db.Integer, nullable=True, default=None)
    Duration = db.Column(db.Integer, nullable=True, default=None)
    Pet_Type = db.Column(db.String(45), nullable=True, default=None)

class Employee(db.Model):
    Employee_ID = db.Column(db.Integer, primary_key=True)
    first_name = db.Column(db.String(45), nullable=True, default=None)
    last_name = db.Column(db.String(45), nullable=True, default=None)
    dd = db.Column(db.Integer, nullable=True, default=None)
    mm = db.Column(db.Integer, nullable=True, default=None)
    yyyy = db.Column(db.Integer, nullable=True, default=None)
    Email = db.Column(db.String(100), nullable=True, default=None)
    Experience = db.Column(db.Integer, nullable=True, default=None)
    Status = db.Column(db.String(45), nullable=True, default=None)
    Rating = db.Column(db.Integer, nullable=True, default=None)



class Product(db.Model):
    Product_ID = db.Column(db.Integer, primary_key=True)
    Name = db.Column(db.String(50), nullable=True, default=None)
    Brand = db.Column(db.String(45), nullable=True, default=None)
    Description = db.Column(db.String(100), nullable=True, default=None)
    Rating = db.Column(db.Integer, nullable=True, default=None)
    Product_Type = db.Column(db.String(45), nullable=True, default=None)
    Pet_Category = db.Column(db.String(45), nullable=True, default=None)
    Quantity = db.Column(db.Integer, nullable=True, default=None)
    Price = db.Column(db.Integer, nullable=True, default=None)
    # orders = relationship("ProductOrder", back_populates="Product")


class ProductOrder(Base,db.Model):
    __tablename__ = 'ProductOrder'
    __tablename__ = 'product_order'


    Order_ID = Column(Integer, primary_key=True)
    Status = Column(String(45), nullable=True, default='Pending')
    Quantity = Column(Integer, nullable=False)
    Order_Date = Column(Date, default=date.today())
    User_ID = Column(Integer, ForeignKey('user.User_id'), nullable=False)
    product_id = Column(Integer, ForeignKey('product.Product_ID'), nullable=False)

    # # Define relationships
    # user = relationship("User", back_populates="orders")
    # product = relationship("Product", back_populates="orders")



class PaymentAndHistory(db.Model):
    Payment_ID = db.Column(db.Integer, primary_key=True)
    Amount = db.Column(db.Integer, nullable=True, default=None)
    Payment_mode = db.Column(db.String(100), nullable=True, default=None)
    Order_type = db.Column(db.String(100), nullable=True, default=None)
    Payment_Date = db.Column(db.String(10), nullable=True, default=None)
    Product_Order_ID = db.Column(db.Integer, db.ForeignKey('ProductOrder.Order_ID'), nullable=False)
    Service_Order_ID = db.Column(db.Integer, db.ForeignKey('service.Service_ID'), nullable=False)

class ProductReview(db.Model):
    review_ID = db.Column(db.Integer, primary_key=True)
    Product_ID = db.Column(db.Integer, db.ForeignKey('product.Product_ID'), nullable=False)
    User_id = db.Column(db.Integer, db.ForeignKey('user.User_id'), nullable=False)
    Rating = db.Column(db.Integer, nullable=True, default=None)
    Date = db.Column(db.String(10), nullable=True, default=None)
    Description = db.Column(db.String(100), nullable=True, default=None)

class EmployeeService(db.Model):
    employee_service_id = db.Column(db.Integer, primary_key=True)
    employee_id = db.Column(db.Integer, db.ForeignKey('employee.Employee_ID'), nullable=False)
    service_id = db.Column(db.Integer, db.ForeignKey('service.Service_ID'), nullable=False)

class Wallet(db.Model):
    User_id = db.Column(db.Integer, db.ForeignKey('user.User_id'), primary_key=True)
    Wallet_id = db.Column(db.Integer)
    Amount = db.Column(db.Float)

class Cart(db.Model):
    User_id = db.Column(db.Integer, db.ForeignKey('user.User_id'), primary_key=True)
    Product_ID = db.Column(db.Integer, db.ForeignKey('product.Product_ID'), primary_key=True)
    Quantity = db.Column(db.Integer)

class ServiceOrder(db.Model):
    Order_ID = db.Column(db.Integer, primary_key=True)
    Status = db.Column(db.String(45), nullable=False)
    dd = db.Column(db.Integer, nullable=False)
    mm = db.Column(db.Integer, nullable=False)
    yyyy = db.Column(db.Integer, nullable=False)

class ProductOrderAudit(db.Model):
    __tablename__ = 'product_order_audit'

    audit_id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    order_id = db.Column(db.Integer)
    operation_type = db.Column(db.String(10))
    operation_timestamp = db.Column(db.TIMESTAMP, default=db.func.current_timestamp())
    user_id = db.Column(db.Integer)
    details = db.Column(db.Text)


@app.route("/")
def home():
    # a=User.query.all()
    # print(a)
    # return "<p>This is for testing purposesss</p>"
    # try:
    #     User.query.all()
    #     return 'My db is connected'
    # except:
    #     return 'my db is not connected'

    return render_template('index.html')


@app.route("/login" ,methods=['POST','GET'])
def login():
    if request.method=='POST':
        email=request.form.get('email')
        password=request.form.get('psw')
        print(email,password)
        user=Credentials.query.filter_by(email=email).first()

        if user and password == user.password:
            if password == user.password:
                login_user(user)
                flash("Login Success","primary")
                return redirect(url_for('home'))
        else:
            flash("invalid credentials","danger")
            return render_template('login.html')  
        #         print('login success')
        #         login_user(user)
        #         # return("Login Success","primary")
        #         return render_template('index.html')
        # else:
        #     # flash("invalid credentials","danger")
        #     return render_template('login.html')    
                





    return render_template('login.html')
    return render_template('login.html')

@app.route("/logout")
@login_required
def logout():
    logout_user()
    flash("Logged out successfully", "primary")
    return redirect(url_for('home'))



@app.route("/test")
def test():
    return "<p>This is for testing purposesss</p>"

@app.route("/home")
def home1():
    return redirect(url_for('home'))

@app.route("/product")
def product():
    product= Product.query.all()
    print(product)
    return render_template('product.html', products=product)

@app.route("/service",methods=['POST','GET'])
def service():
    service= Service.query.all()
    return render_template('service.html', services=service)

@app.route("/contact")
def contact():
    return render_template('contact.html')

# @app.route('/cart', methods=['POST','GET'])
# def cart():
#     if request.method == 'GET':
#         product_id = request.form.get('product_id')
#         # Add product to cart
#         # For example:
#         # Check if the product is already in the cart
#         cart_item = Cart.query.filter_by(User_id=current_user.User_id, Product_ID=product_id).first()
#         if cart_item:
#             # If the product is already in the cart, update its quantity
#             cart_item.Quantity += 1
#         else:
#             # If the product is not in the cart, add it to the cart
#             cart_item = Cart(User_id=current_user.User_id, Product_ID=product_id, Quantity=1)
#             db.session.add(cart_item)
#         db.session.commit()
#         return redirect(url_for('product'))


@app.route('/user')
@login_required
def user():
    # Assuming you have a function to retrieve user details from the database
    user = User.query.filter_by(User_id=current_user.User_id).first()
    return render_template('user.html', user=user)


@app.route('/add_to_cart', methods=['POST'])
def add_to_cart():
    product_id = request.form.get('product_id')
    product = Product.query.get(product_id)
    if product:
        if product.Quantity > 0:
            # Check if the product is already in the cart
            cart_item = Cart.query.filter_by(User_id=current_user.User_id, Product_ID=product_id).first()
            if cart_item:
                # If the product is already in the cart, update its quantity
                cart_item.Quantity += 1
            else:
                # If the product is not in the cart, add it to the cart
                cart_item = Cart(User_id=current_user.User_id, Product_ID=product_id, Quantity=1)
                db.session.add(cart_item)
            # Decrease product quantity by 1
            product.Quantity -= 1
            db.session.commit()
            flash('Product added to cart successfully', 'success')
        else:
            flash('Product out of stock', 'danger')
    return redirect(url_for('product'))

@app.route('/remove_from_cart', methods=['POST'])
@login_required
def remove_from_cart():
    product_id = request.form.get('product_id')
    product = Product.query.get(product_id)
    if product:
        # Check if the product is in the cart
        cart_item = Cart.query.filter_by(User_id=current_user.User_id, Product_ID=product_id).first()
        if cart_item:
            # Reduce product quantity in the cart by 1
            if cart_item.Quantity > 1:
                cart_item.Quantity -= 1
            else:
                # If quantity is already 1, delete the cart item
                db.session.delete(cart_item)
            # Increase product quantity by 1
            product.Quantity += 1
            db.session.commit()
            flash('Product removed from cart successfully', 'success')
    return redirect(url_for('cart'))

@app.route('/remove_from_cart_inProductPage', methods=['POST'])
@login_required
def remove_from_cart_inProductPage():
    product_id = request.form.get('product_id')
    product = Product.query.get(product_id)
    if product:
        # Check if the product is in the cart
        cart_item = Cart.query.filter_by(User_id=current_user.User_id, Product_ID=product_id).first()
        if cart_item:
            # Reduce product quantity in the cart by 1
            if cart_item.Quantity > 1:
                cart_item.Quantity -= 1
            else:
                # If quantity is already 1, delete the cart item
                db.session.delete(cart_item)
            # Increase product quantity by 1
            product.Quantity += 1
            db.session.commit()
            flash('Product removed from cart successfully', 'success')
    return redirect(url_for('product'))



@app.route('/cart', methods=['POST','GET'])
@login_required
def cart():
    if request.method == 'POST':
        product_id = request.form.get('product_id')
        if product_id:
            # Add product to cart
            # For example:
            # Check if the product is already in the cart
            cart_item = Cart.query.filter_by(User_id=current_user.User_id, Product_ID=product_id).first()
            if cart_item:
                # If the product is already in the cart, update its quantity
                cart_item.Quantity += 1
            else:
                # If the product is not in the cart, add it to the cart
                cart_item = Cart(User_id=current_user.User_id, Product_ID=product_id, Quantity=1)
                db.session.add(cart_item)
            db.session.commit()
            flash('Product added to cart successfully', 'success')
            return redirect(url_for('product'))
        else:
            flash('Invalid product ID', 'danger')
            return redirect(url_for('product'))  # Redirect to the product page or any appropriate page
    elif request.method == 'GET':
        # Handle GET request if needed
        cart_items = Cart.query.filter_by(User_id=current_user.User_id).all()
    
        # List to store cart items and their corresponding product details
        items_with_details = []
    
        # Loop through each cart item and retrieve product details
        for cart_item in cart_items:
            product = Product.query.get(cart_item.Product_ID)
            print(cart_item.Quantity)
            a=cart_item.Quantity
            if product:
                items_with_details.append({'product': product, 'quantity': a})
    
        return render_template('cart.html', cart_items=items_with_details)





@app.route('/final_order', methods=['GET', 'POST'])
@login_required  # Requires the user to be logged in
def final_order():
    # Retrieve all cart items for the current user
    cart_items = Cart.query.filter_by(User_id=current_user.User_id).all()
    
    # Fetch product details for each cart item
    products = {}
    for cart_item in cart_items:
        product = Product.query.get(cart_item.Product_ID)
        if product:
            products[cart_item.Product_ID] = product
    
    # Calculate total order value
    total_price = sum(products[cart_item.Product_ID].Price * cart_item.Quantity for cart_item in cart_items)
    
    # Render template with cart items, product details, and total order value
    return render_template('final_order.html', cart_items=cart_items, products=products, total_price=total_price)


@app.route('/confirm_order', methods=['GET', 'POST'])
@login_required
def confirm_order():
    # Retrieving all cart items for the current user
    cart_items = Cart.query.filter_by(User_id=current_user.User_id).all()
    # abc=ProductOrder.queryfilter_by(max()).all()

    
    if request.method == 'POST':
        # Creating ProductOrder instances for each cart item
        for cart_item in cart_items:
            max_order_id = db.session.query(func.max(ProductOrder.Order_ID)).scalar()
            max_order_id=int(max_order_id)+1

            product_order = ProductOrder(
                Order_ID= max_order_id,
                Status='Pending',
                Quantity=cart_item.Quantity,
                Order_Date=date.today(),
                User_ID=current_user.User_id,
                product_id=cart_item.Product_ID
            )
            db.session.add(product_order)
            db.session.delete(cart_item)  # Remove the cart item after creating the order
        
        db.session.commit()
        flash('Order placed successfully', 'success')
        return redirect(url_for('view_order'))  # Redirect to a view orders page after placing the order
    
    # Fetching product details for each cart item
    products = {}
    for cart_item in cart_items:
        product = Product.query.get(cart_item.Product_ID)
        if product:
            products[cart_item.Product_ID] = product
    
    # Calculating total order value
    total_price = sum(products[cart_item.Product_ID].Price * cart_item.Quantity for cart_item in cart_items)
    
    # Rendering the confirm order page
    return render_template('confirm_order.html', cart_items=cart_items, products=products, total_price=total_price)


# def confirm_order():
#     # Retrieve all cart items for the current user
#     cart_items = Cart.query.filter_by(User_id=current_user.User_id).all()
    
#     # Fetch product details for each cart item
#     products = {}
#     for cart_item in cart_items:
#         product = Product.query.get(cart_item.Product_ID)
#         if product:
#             products[cart_item.Product_ID] = product
    
#     # Calculate total order value
#     total_price = sum(products[cart_item.Product_ID].Price * cart_item.Quantity for cart_item in cart_items)
    
#     # Render the confirm order page
#     # return render_template('confirm_order.html', cart_items=cart_items, products=products, total_price=total_price)
#     return 'Your order placed successfully'


@app.route("/view_order",methods=['GET', 'POST'])
@login_required
def view_order():
    if request.method=='POST':
        user_orders = ProductOrder.query.filter_by(User_ID=current_user.User_id).all()
    
        # Create a list to store order details with product name
        orders_with_product_name = []
        
        # Iterate through each order and fetch the associated product details
        for order in user_orders:
            product = Product.query.get(order.product_id)
            if product:
                orders_with_product_name.append({
                    'order': order,
                    'product_name': product.Name
                })
        
        # Render the template with order details and associated product names
        message = 'Order placed successfully'  # This message can come from the logic after placing an order
        flash("Here are your previous orders", "success")
        return render_template('view_order1.html', orders=orders_with_product_name, message=message) 
    # Retrieve all orders for the current user
    else:
        user_orders = ProductOrder.query.filter_by(User_ID=current_user.User_id).all()
        
        # Create a list to store order details with product name
        orders_with_product_name = []
        
        # Iterate through each order and fetch the associated product details
        for order in user_orders:
            product = Product.query.get(order.product_id)
            if product:
                orders_with_product_name.append({
                    'order': order,
                    'product_name': product.Name
                })
        
        # Render the template with order details and associated product names
        return render_template('view_order.html', orders=orders_with_product_name)
    


# @app.route("/admin/inventory")
# def admin_inventory():
#     # Fetch products from the Cart
#     cart_products = Cart.query.all()

#     # Create a dictionary to store product IDs and their corresponding names
#     product_names = {}
#     for cart_item in cart_products:
#         product = Product.query.get(cart_item.Product_ID)
#         if product:
#             product_names[cart_item.Product_ID] = product.Name

#     # Fetch available products from the Product table
#     available_products = Product.query.all()

#     # Calculate product quantities in cart
#     product_quantities = []
#     for product in available_products:
#         total_quantity = 0
#         for cart_item in cart_products:
#             if cart_item.Product_ID == product.Product_ID:
#                 total_quantity += cart_item.Quantity
#         product_quantities.append(total_quantity)

#     return render_template("admin_inventory.html", available_products=available_products, cart_products=cart_products, product_names=product_names, product_quantities=product_quantities)
@app.route("/admin/inventory", methods=['GET', 'POST'])
def admin_inventory():
    if request.method == 'POST':
        # Update product quantities based on admin input
        available_products = Product.query.all()
        for product in available_products:
            new_quantity_str = request.form.get(f'quantity_{product.Product_ID}')
            if new_quantity_str:
                try:
                    new_quantity = int(new_quantity_str)
                    if new_quantity >= 0:
                        # Update the quantity in the database
                        product.Quantity = new_quantity
                        db.session.commit()
                except ValueError:
                    # Handle invalid input (non-integer)
                    pass

    # Fetch products from the Cart
    cart_products = Cart.query.all()

    # Create a dictionary to store product IDs and their corresponding names
    product_names = {}
    for cart_item in cart_products:
        product = Product.query.get(cart_item.Product_ID)
        if product:
            product_names[cart_item.Product_ID] = product.Name

    # Fetch available products from the Product table
    available_products = Product.query.all()

    # Calculate product quantities in cart
    product_quantities = []
    for product in available_products:
        total_quantity = 0
        for cart_item in cart_products:
            if cart_item.Product_ID == product.Product_ID:
                total_quantity += cart_item.Quantity
        product_quantities.append(total_quantity)

    return render_template("admin_inventory.html", available_products=available_products, cart_products=cart_products, product_names=product_names, product_quantities=product_quantities)

@app.route("/product_order_audit")
def product_order_audit():
    # Fetch audit trail records for product orders
    audit_records = ProductOrderAudit.query.all()
    return render_template("product_order_audit.html", audit_records=audit_records)


app.run(debug=True)