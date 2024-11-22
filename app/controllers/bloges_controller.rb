class BlogesController < ApplicationController
  def index
    @bloges = Bloge.order(:id)
  end

  def show
    @bloge = Bloge.find(params[:id])
  end

   def new
      @bloge = Bloge.new
   end
  def create
    @bloge = Bloge.new(bloge_params)

    if @bloge.save
      redirect_to @bloge
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @bloge = Bloge.find(params[:id])
  end

  def update
    @bloge = Bloge.find(params[:id])

    if @bloge.update(bloge_params)
      redirect_to @bloge
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @bloge = Bloge.find(params[:id])
    @bloge.destroy

    redirect_to root_path, status: :see_other
  end
    private
      def bloge_params
      params.expect(bloge: [:title, :discription])
    end
  end
