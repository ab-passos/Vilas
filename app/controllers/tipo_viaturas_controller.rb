class TipoViaturasController < ApplicationController
  # GET /tipo_viaturas
  # GET /tipo_viaturas.xml
  def index
    @tipo_viaturas = TipoViatura.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tipo_viaturas }
    end
  end

  # GET /tipo_viaturas/1
  # GET /tipo_viaturas/1.xml
  def show
    @tipo_viatura = TipoViatura.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tipo_viatura }
    end
  end

  # GET /tipo_viaturas/new
  # GET /tipo_viaturas/new.xml
  def new
    @tipo_viatura = TipoViatura.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tipo_viatura }
    end
  end

  # GET /tipo_viaturas/1/edit
  def edit
    @tipo_viatura = TipoViatura.find(params[:id])
  end

  # POST /tipo_viaturas
  # POST /tipo_viaturas.xml
  def create
    @tipo_viatura = TipoViatura.new(params[:tipo_viatura])

    respond_to do |format|
      if @tipo_viatura.save
        format.html { redirect_to(@tipo_viatura, :notice => 'Tipo viatura was successfully created.') }
        format.xml  { render :xml => @tipo_viatura, :status => :created, :location => @tipo_viatura }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tipo_viatura.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_viaturas/1
  # PUT /tipo_viaturas/1.xml
  def update
    @tipo_viatura = TipoViatura.find(params[:id])

    respond_to do |format|
      if @tipo_viatura.update_attributes(params[:tipo_viatura])
        format.html { redirect_to(@tipo_viatura, :notice => 'Tipo viatura was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tipo_viatura.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_viaturas/1
  # DELETE /tipo_viaturas/1.xml
  def destroy
    @tipo_viatura = TipoViatura.find(params[:id])
    @tipo_viatura.destroy

    respond_to do |format|
      format.html { redirect_to(tipo_viaturas_url) }
      format.xml  { head :ok }
    end
  end
end
