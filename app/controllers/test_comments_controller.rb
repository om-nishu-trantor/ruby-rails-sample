class TestCommentsController < ApplicationController
  before_action :set_test_comment, only: [:show, :edit, :update, :destroy]

  # GET /test_comments
  # GET /test_comments.json
  def index
    @test_comments = TestComment.all
  end

  # GET /test_comments/1
  # GET /test_comments/1.json
  def show
  end

  # GET /test_comments/new
  def new
    @test_comment = TestComment.new
  end

  # GET /test_comments/1/edit
  def edit
  end

  # POST /test_comments
  # POST /test_comments.json
  def create
    @test_comment = TestComment.new(test_comment_params)

    respond_to do |format|
      if @test_comment.save
        format.html { redirect_to @test_comment, notice: 'Test comment was successfully created.' }
        format.json { render :show, status: :created, location: @test_comment }
      else
        format.html { render :new }
        format.json { render json: @test_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_comments/1
  # PATCH/PUT /test_comments/1.json
  def update
    respond_to do |format|
      if @test_comment.update(test_comment_params)
        format.html { redirect_to @test_comment, notice: 'Test comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_comment }
      else
        format.html { render :edit }
        format.json { render json: @test_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_comments/1
  # DELETE /test_comments/1.json
  def destroy
    @test_comment.destroy
    respond_to do |format|
      format.html { redirect_to test_comments_url, notice: 'Test comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_comment
      @test_comment = TestComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_comment_params
      params.fetch(:test_comment, {})
    end
end
