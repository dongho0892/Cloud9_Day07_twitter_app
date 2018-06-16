class TweetController < ApplicationController
    
    def index
        @boardall = Board.all
    end
    
    def show
        @boardone = Board.find(params[:id])
        
    end

    def new
        
    end
    
    def create
        twit = Board.new                # 모델명 이름으로 !! 대문자 Board
        twit.tweet = params[:context]
        twit.ip_address = request.ip
        twit.save
        redirect_to "/tweet"
    end
    
    def edit
        @boardall = Board.find(params[:id])
            
    end



    def update          # 바뀐 내용을 DB에 업그레이드 해주어야함.
        twit = Board.find(params[:id])              # 모델명 이름으로 !! 대문자 Board
        twit.tweet = params[:context]
        twit.ip_address = request.ip
        twit.save
        redirect_to "/tweet"
    end
    
    

    def destroy
        twit = Board.find(params[:id])
        twit.destroy
        redirect_to "/tweet"
    end
    
    
end
