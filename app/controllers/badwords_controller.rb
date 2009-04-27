class BadwordsController < ApplicationController
  # GET /badwords
  # GET /badwords.xml
  def index
    @badwords = Badwords.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @badwords }
    end
  end

  # GET /badwords/1
  # GET /badwords/1.xml
  def show
    @badwords = Badwords.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @badwords }
    end
  end

  # GET /badwords/new
  # GET /badwords/new.xml
  def new
    @badwords = Badwords.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @badwords }
    end
  end

  # GET /badwords/1/edit
  def edit
    @badwords = Badwords.find(params[:id])
  end

  # POST /badwords
  # POST /badwords.xml
  def create
    @badwords = Badwords.new(params[:badwords])

    respond_to do |format|
      if @badwords.save
        flash[:notice] = 'Badwords was successfully created.'
        format.html { redirect_to(@badwords) }
        format.xml  { render :xml => @badwords, :status => :created, :location => @badwords }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @badwords.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /badwords/1
  # PUT /badwords/1.xml
  def update
    @badwords = Badwords.find(params[:id])

    respond_to do |format|
      if @badwords.update_attributes(params[:badwords])
        flash[:notice] = 'Badwords was successfully updated.'
        format.html { redirect_to(@badwords) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @badwords.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /badwords/1
  # DELETE /badwords/1.xml
  def destroy
    @badwords = Badwords.find(params[:id])
    @badwords.destroy

    respond_to do |format|
      format.html { redirect_to(badwords_url) }
      format.xml  { head :ok }
    end
  end
end
