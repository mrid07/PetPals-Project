from flask_sqlalchemy import SQLAlchemy
from flask_login import UserMixin

db = SQLAlchemy()


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

class ProductOrder(db.Model):
    Order_ID = db.Column(db.Integer, primary_key=True)
    Status = db.Column(db.String(45), nullable=True, default=None)
    Quantity = db.Column(db.Integer, nullable=False)
    Order_Date = db.Column(db.Date)
    User_ID = db.Column(db.Integer, db.ForeignKey('user.User_id'), nullable=False)
    product_id = db.Column(db.Integer, db.ForeignKey('product.Product_ID'), nullable=False)

class PaymentAndHistory(db.Model):
    Payment_ID = db.Column(db.Integer, primary_key=True)
    Amount = db.Column(db.Integer, nullable=True, default=None)
    Payment_mode = db.Column(db.String(100), nullable=True, default=None)
    Order_type = db.Column(db.String(100), nullable=True, default=None)
    Payment_Date = db.Column(db.String(10), nullable=True, default=None)
    Product_Order_ID = db.Column(db.Integer, db.ForeignKey('product_order.Order_ID'), nullable=False)
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
