class Comment < ActiveRecord::Base
    validates_presence_of :affiliated_page
    validates_length_of :affiliated_page, :maximum => 100
    validates_presence_of :comment
    validates_length_of :comment, :maximum => 1000
end
