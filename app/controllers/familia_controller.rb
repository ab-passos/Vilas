class FamiliaController < ApplicationController
  # GET /familia
  # GET /familia.xml
  def index
    @familia = Familium.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @familia }
    end
  end

  # GET /familia/1
  # GET /familia/1.xml
  def show
    @familium = Familium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @familium }
    end
  end

  # GET /familia/new
  # GET /familia/new.xml
  def new
    @familium = Familium.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @familium }
    end
  end

  # GET /familia/1/edit
  def edit
    @familium = Familium.find(params[:id])
  end

  # POST /familia
  # POST /familia.xml
  def create
    @familium = Familium.new(params[:familium])

    respond_to do |format|
      if @familium.save
        format.html { redirect_to(@familium, :notice => 'Familium was successfully created.') }
        format.xml  { render :xml => @familium, :status => :created, :location => @familium }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @familium.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /familia/1
  # PUT /familia/1.xml
  def update
    @familium = Familium.find(params[:id])

    respond_to do |format|
      if @familium.update_attributes(params[:familium])
        format.html { redirect_to(@familium, :notice => 'Familium was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @familium.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /familia/1
  # DELETE /familia/1.xml
  def destroy
    @familium = Familium.find(params[:id])
    @familium.destroy

    respond_to do |format|
      format.html { redirect_to(familia_url) }
      format.xml  { head :ok }
    end
  end
end
