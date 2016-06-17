class Student < ActiveRecord::Base
    validates :roll_number, presence: true, format: { with: /\A[0-9]{9}\Z/, message: "9 digit roll number only"}, uniqueness: true;
    #validates :email, format: { with: , message: "Email-id should end with @nitt.edu" };
end
