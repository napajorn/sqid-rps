require 'digest'
class User < ActiveRecord::Base
	attr_accessor :password
	#VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
	#default_scope lamda { order('users.first') }
	validates_uniqueness_of :email
	#validates_length_of :email, :within => 5..50
	#validates_format_of :email, :multipleline => true, :with => VALID_EMAIL_REGEX
	validates_confirmation_of :password
	#validates_length_of :password, :within => 4..20
	validates_presence_of :password, :if => :password_required? 
	validates_presence_of :first
	
	before_save :encrypt_new_password
	
	def full_name
		"#{first} #{last}"
	end
	
	def self.authenticate(email, password)
		user = find_by_email(email)
		return user if user && user.authenticated?(password)
	end
	
	def authenticated?(password)
		self.hashed_password == encrypt(password)
	end
	
	
	def encrypt_new_password
		return if password.blank?
		self.hashed_password = encrypt(password)
		self.email = email.downcase
	end
	
	def password_required?
		hashed_password.blank? || password.present?
	end
	
	def encrypt(string)
		Digest::SHA1.hexdigest(string)
	end
end
