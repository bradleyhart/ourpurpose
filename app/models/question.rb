class Question < ActiveRecord::Base
    validates_presence_of :email
    validates_length_of :email, :maximum => 254
    validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message => "Please enter a valid email"
    validates_presence_of :question
end
