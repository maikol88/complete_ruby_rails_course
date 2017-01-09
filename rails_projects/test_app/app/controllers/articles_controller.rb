class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

  # GET /articles/new
  def new
    obj = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json
  def create
    obj = Article.new(article_params)

    respond_to do |format|
      if obj.save
        format.html { redirect_to obj, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: obj }
      else
        format.html { render :new }
        format.json { render json: obj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if obj.update(article_params)
        format.html { redirect_to obj, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: obj }
      else
        format.html { render :edit }
        format.json { render json: obj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    obj.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      obj = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:obj).permit(:title, :description)
    end
end
