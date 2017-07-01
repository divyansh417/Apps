class Signup < ApplicationMailer
   def welcome email
   	 @email=email
   	 mail to: email, subject:"welcome mail"
   end
end
  