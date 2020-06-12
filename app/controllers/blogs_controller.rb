class BlogsController <ApplicationController

    def index
        @blogs = Blog.all
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
            flash.now[:danger] = "A failure has occured. Blog Post has not been created"
            render :new
        end
    end

    def show
        @blog = Blog.find(params[:id])
    end

     def edit
        @blog = Blog.find(params[:id])
    end

    def update
       @blog = Blog.find(params[:id])
        if @blog.update(blog_params)
            flash[:success] = "Post has been updated!"
            redirect_to @blog
        else
            flash.now[:danger] = "A failure has occured. Blog Post has not been created"
            render :edit
        end
    end

    private

    def blog_params
        params.require(:blog).permit(:title, :body, :image)
    end
end