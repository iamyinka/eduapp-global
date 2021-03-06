class DocsController < ApplicationController
	before_action :authenticate_agent!
	before_action :find_doc, only: [:show, :edit, :update, :destroy]

  def index
  	@docs = current_agent.docs.all.order("created_at DESC")
  end

  def new
  	@doc = current_agent.docs.build
  end

  def create
  	@doc = current_agent.docs.build(doc_params)

  	if @doc.save
  		flash[:notice] = "Document Posted Successfully"
  		redirect_to @doc
  	else
  		flash[:alert] = "Problem occured while saving..."
  		render 'new'
  	end
  end

  def edit

  end

  def update
  	
  	if @doc.update(doc_params)
  		redirect_to @doc, notice: "Document Posted Successfully"
  	else
  		flash[:alert] = "Problem occured while saving..."
  		render 'edit'
  	end
  end

  def show
  end

  def destroy
  	@doc.destroy
  	redirect_to docs_path
  end

  private

  def find_doc
  	@doc = Doc.find(params[:id])
  end

  def doc_params
  	params.require(:doc).permit(:title, :description, :document)
  end

  
end
