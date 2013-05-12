class ProofIslamTruthVideosController < ApplicationController
    layout "ourpurpose_layout"

    def index
        @videos = create_videos
        @video = find_video(get_id)

        @page_title = ": Videos"
    end

    private

    def get_id
        if params[:id]
            params[:id]
        else
            1
        end
    end

    def find_video(id)
        @videos.each do |video|
            if id.to_i.equal?(video.id)
                return video
            end
        end
        @videos[0]
    end

    def create_videos
        [ProofIslamTruthVideo.new(1, "NOwA0v026wY"),
                ProofIslamTruthVideo.new(2, "xt7UqJBLhW4"),
                ProofIslamTruthVideo.new(3, "j4GuFTIPFEA"),
                ProofIslamTruthVideo.new(4, "XOr9k_br92U"),
                ProofIslamTruthVideo.new(5, "BZ4kwdZ1qVU"),
                ProofIslamTruthVideo.new(6, "NypoiJeF7A0"),
                ProofIslamTruthVideo.new(7, "bFPA6wt0R3w"),
                ProofIslamTruthVideo.new(8, "TiLBGHwX_4c"),
                ProofIslamTruthVideo.new(9, "fluiDCYCVhw"),
                ProofIslamTruthVideo.new(10, "IKcsgnoKKTI"),
                ProofIslamTruthVideo.new(11, "riHxoBN0hok"),
                ProofIslamTruthVideo.new(12, "HzPbS0RCvBE"),
                ProofIslamTruthVideo.new(13, "XPZjDErZIBo"),
                ProofIslamTruthVideo.new(14, "fyCYH0al0eI"),
                ProofIslamTruthVideo.new(15, "HTxZLB7qTS8")]
    end

end
