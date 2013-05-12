class TheQuranController < ApplicationController
    layout "ourpurpose_layout"

    def index
        @page_title = ": The Quran"
    end

    def inimitibility
        @page_title = ": Linguistic Miracle"
        @title = params[:title]
        if @title.nil?
            @title = "Linguistic Miracle"
        end
    end

    def challenge_to_jews
        @page_title = ": The Quran - Challenge to Jewish"
    end

    def chapter_al_massad
        @page_title = ": The Quran - Opportunity for an Enemy"
    end

    def chapter_ar_rum
        @page_title = ": The Quran - Prediction of the Future"
    end

    def contradictions_challenge
        @page_title = ": The Quran - Contradictions Challenge"
    end

    def opportunity_for_jews
        @page_title = ": The Quran - Opporunity for the Jewish"
    end

    def preservation
        @page_title = ": The Quran - Preservation"
    end

    def what_is_quran
        @page_title = ": The Quran - What is the Quran?"
    end

    def who_is_quran_for
        @page_title = ": The Quran - Who is Quran for?"
    end

    def what_scientists_say
        @page_title = ": The Quran - What Scientists say"
    end

end
