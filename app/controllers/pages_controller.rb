class PagesController < ApplicationController
      #before_action :setpage, except: [:index,:new,:create]
    before_action :setpage, only: [:show,:edit,:update,:destroy]

    def index
        @page = Page.all         # ye method page viewsse deal krenga  
                                   #index method index.html.erb ko acces krenga
    end
    def show
        #setpage
    
    end
   
    def new 
        @page = Page.new
    end

    def create 
        
        @page = Page.new(page_params)
        @page.save
        redirect_to  '/pages/new'
    end

    def edit 
       # @page= Page.find(params[:id])
    end

    def update
        
        @page.update(page_params)
        redirect_to @pages
    end

    def destroy
       # @page = Page.find(params[:id])
        @page.destroy
    end
    
    def setpage
       @page = Page.find(params[:id])
    end
    def page_params
        params.require(:page).permit(:title,:body,:slug) 
    end
end
