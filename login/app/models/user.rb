class User < ActiveRecord::Base
	validates :name, presence:{message:"Name required"}
	validates :email, presence:{message:"email required"},uniqueness:{message:"User with this email id already exists"},confirmation:{case_sensitive:false}
	validates :password, presence:{message:"password required"},length:{minimum:5,message:"password should be 5 character long"}
	validates :confirmpassword, presence:{message:"confirmation password required"}
end
