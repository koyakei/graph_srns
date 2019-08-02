class GraphTraversalKlassesController < ApplicationController
  before_action :set_graph_traversal_klass, only: [:show, :edit, :update, :destroy]

  # GET /graph_traversal_klasses
  # GET /graph_traversal_klasses.json
  def index
    @graph_traversal_klasses = GraphTraversalKlass.all
  end

  # GET /graph_traversal_klasses/1
  # GET /graph_traversal_klasses/1.json
  def show
  end

  # GET /graph_traversal_klasses/new
  def new
    @graph_traversal_klass = GraphTraversalKlass.new
  end

  # GET /graph_traversal_klasses/1/edit
  def edit
  end

  # POST /graph_traversal_klasses
  # POST /graph_traversal_klasses.json
  def create
    @graph_traversal_klass = GraphTraversalKlass.new(graph_traversal_klass_params)

    respond_to do |format|
      if @graph_traversal_klass.save
        format.html { redirect_to @graph_traversal_klass, notice: 'Graph traversal klass was successfully created.' }
        format.json { render :show, status: :created, location: @graph_traversal_klass }
      else
        format.html { render :new }
        format.json { render json: @graph_traversal_klass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /graph_traversal_klasses/1
  # PATCH/PUT /graph_traversal_klasses/1.json
  def update
    respond_to do |format|
      if @graph_traversal_klass.update(graph_traversal_klass_params)
        format.html { redirect_to @graph_traversal_klass, notice: 'Graph traversal klass was successfully updated.' }
        format.json { render :show, status: :ok, location: @graph_traversal_klass }
      else
        format.html { render :edit }
        format.json { render json: @graph_traversal_klass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /graph_traversal_klasses/1
  # DELETE /graph_traversal_klasses/1.json
  def destroy
    @graph_traversal_klass.destroy
    respond_to do |format|
      format.html { redirect_to graph_traversal_klasses_url, notice: 'Graph traversal klass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graph_traversal_klass
      @graph_traversal_klass = GraphTraversalKlass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def graph_traversal_klass_params
      params.require(:graph_traversal_klass).permit(:name, :json_data)
    end
end
