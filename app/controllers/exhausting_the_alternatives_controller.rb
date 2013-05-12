class ExhaustingTheAlternativesController < ApplicationController
    layout "ourpurpose_layout"

    def index
        @page_title = ": The Alternatives"
    end

    def arab_unity
        @page_title = ": The Alternatives - For Arab Unity"
    end

    def copied_from_bible
        @page_title = ": The Alternatives - Copied from the Bible"
    end

    def deception
        @page_title = ": The Alternatives - Where is the Deception?"
    end

    def fame_status_glory
        @page_title = ": The Alternatives - For Fame, Status and Glory"
    end

    def learnt_from_jews_and_christians
        @page_title = ": The Alternatives - Learnt from Jews and Christians"
    end

    def learnt_from_people_outside_arabia
        @page_title = ": The Alternatives - Learnt from People Outside Arabia"
    end

    def learnt_from_roman_blacksmith
        @page_title = ": The Alternatives - Learnt from Roman Blacksmith"
    end

    def learnt_from_warakah
        @page_title = ": The Alternatives - Learnt from Warakah"
    end

    def material_gains
        @page_title = ": The Alternatives - For Material Gains"
    end

    def moral_reformation
        @page_title = ": The Alternatives - For Moral Reformation"
    end

    def mythomania
        @page_title = ": The Alternatives - Suffering from Mythomania"
    end

    def religious_illusion
        @page_title = ": The Alternatives - Religious Illusion Theory"
    end
    
end
