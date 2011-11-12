class StatusController < ApplicationController
  # GET /status
  # GET /status.json
  def index
    @status = Status.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @status }
    end
  end

  # GET /status/1
  # GET /status/1.json
  def show
    @status = Status.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @status }
    end
  end

  # GET /status/new
  # GET /status/new.json
  def new
    @status = Status.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @status }
    end
  end

  # GET /status/1/edit
  def edit
    @status = Status.find(params[:id])
  end

  # POST /status
  # POST /status.json
  def create
    @status = Status.new(params[:status])

    respond_to do |format|
      if @status.save
        format.html { redirect_to @status, :notice => 'Status was successfully created.' }
        format.json { render :json => @status, :status => :created, :location => @status }
      else
        format.html { render :action => "new" }
        format.json { render :json => @status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /status/1
  # PUT /status/1.json
  def update
    @status = Status.find(params[:id])

    respond_to do |format|
      if @status.update_attributes(params[:status])
        format.html { redirect_to @status, :notice => 'Status was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /status/1
  # DELETE /status/1.json
  def destroy
    @status = Status.find(params[:id])
    @status.destroy

    respond_to do |format|
      format.html { redirect_to status_index_url }
      format.json { head :ok }
    end
  end
end
