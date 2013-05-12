class OurpurposeController < ApplicationController
  layout "ourpurpose_layout" 

  def index
    
  end

  def the_creator
    redirect_to :controller=>'the_creator_section'
  end
 
  def under_construction
     @page_title = "Our purpose" 
  end

end
