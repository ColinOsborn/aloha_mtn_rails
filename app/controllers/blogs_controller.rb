class BlogsController <ApplicationController

    def index
    end

    def new
        @blog = Blog.new
    end

    def create
        @blog = Blog.create(blog_params)
        if @blog.save
            flash[:success] = "Post has been created!"
            redirect_to @blog
        else
            flash.now[:danger] = "A failure has occured. Article has not been created"
            render :new
        end
    end

    def show
        @blog = Blog.find(params[:id])
    end

    private

    def blog_params
        params.require(:blog).permit(:title, :body, :image)
    end
end