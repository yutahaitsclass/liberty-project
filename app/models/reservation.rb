class Reservation < ApplicationRecord
    SCHEDULES=[
    DateTime.new(2019,1,1,11,00),
    DateTime.new(2019,1,1,11,30),
    DateTime.new(2019,1,1,12,00),
    DateTime.new(2019,1,1,13,00),
    DateTime.new(2019,1,1,14,00),
    DateTime.new(2019,1,1,15,00),
    DateTime.new(2019,1,1,16,00),
    DateTime.new(2019,1,1,17,00),
    DateTime.new(2019,1,1,18,00),
    DateTime.new(2019,1,1,18,30),
    DateTime.new(2019,1,1,19,00),
    DateTime.new(2019,1,1,20,00)]


      validates :name, presence: true
      validates :email, presence: true
      validates :phone, presence: true
      EMAIL_FORMAT=/\A[a-zA-Z0-9_\#!$%&`‘*+\-{|}~^\/=?\.]+@[a-zA-Z0-9][a-zA-Z0-9\.-]+\z/
      validates :email, format: { with:EMAIL_FORMAT }
end
