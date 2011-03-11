class CombustivelsController < ApplicationController
  # GET /combustivels
  # GET /combustivels.xml
  def index
    @combustivels = Combustivel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @combustivels }
    end
  end

  # GET /combustivels/1
  # GET /combustivels/1.xml
  def show
    @combustivel = Combustivel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @combustivel }
    end
  end

  # GET /combustivels/new
  # GET /combustivels/new.xml
  def new
    @combustivel = Combustivel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @combustivel }
    end
  end

  # GET /combustivels/1/edit
  def edit
    @combustivel = Combustivel.find(params[:id])
  end

  # POST /combustivels
  # POST /combustivels.xml
  def create
    @combustivel = Combustivel.new(params[:combustivel])

    respond_to do |format|
      if @combustivel.save
        format.html { redirect_to(@combustivel, :notice => 'Combustivel was successfully created.') }
        format.xml  { render :xml => @combustivel, :status => :created, :location => @combustivel }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @combustivel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /combustivels/1
  # PUT /combustivels/1.xml
  def update
    @combustivel = Combustivel.find(params[:id])

    respond_to do |format|
      if @combustivel.update_attributes(params[:combustivel])
        format.html { redirect_to(@combustivel, :notice => 'Combustivel was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @combustivel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /combustivels/1
  # DELETE /combustivels/1.xml
  def destroy
    @combustivel = Combustivel.find(params[:id])
    @combustivel.destroy

    respond_to do |format|
      format.html { redirect_to(combustivels_url) }
      format.xml  { head :ok }
    end
  end
end
