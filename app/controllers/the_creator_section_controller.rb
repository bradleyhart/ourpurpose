class TheCreatorSectionController < ApplicationController
    layout "ourpurpose_layout"

    def index
        @page_title = ": The Creator"
    end

    def infinite_universe
       @page_title = ": The Creator - Infinite Universe?" 
    end

    def something_from_nothing
        @page_title = ": The Creator - Something from Nothing?" 
    end
    
end
