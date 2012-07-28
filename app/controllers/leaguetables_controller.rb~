class LeaguetablesController < ApplicationController
  # GET /leaguetables
  # GET /leaguetables.json
  def index
    @leaguetables = Leaguetable.find(:all, :order => 'points - penalty_points DESC, matches_played, goals_for - goals_against DESC, goals_for DESC')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @leaguetables }
    end
  end

  # GET /leaguetables/1
  # GET /leaguetables/1.json
  def show
    @leaguetable = Leaguetable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @leaguetable }
    end
  end

  # GET /leaguetables/new
  # GET /leaguetables/new.json
  def new
    @leaguetable = Leaguetable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @leaguetable }
    end
  end

  # GET /leaguetables/1/edit
  def edit
    @leaguetable = Leaguetable.find(params[:id])
  end

  # POST /leaguetables
  # POST /leaguetables.json
  def create
    @leaguetable = Leaguetable.new(params[:leaguetable])

    respond_to do |format|
      if @leaguetable.save
        format.html { redirect_to @leaguetable, notice: 'Leaguetable was successfully created.' }
        format.json { render json: @leaguetable, status: :created, location: @leaguetable }
      else
        format.html { render action: "new" }
        format.json { render json: @leaguetable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /leaguetables/1
  # PUT /leaguetables/1.json
  def update
    @leaguetable = Leaguetable.find(params[:id])

    respond_to do |format|
      if @leaguetable.update_attributes(params[:leaguetable])
        format.html { redirect_to @leaguetable, notice: 'Leaguetable was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @leaguetable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leaguetables/1
  # DELETE /leaguetables/1.json
  def destroy
    @leaguetable = Leaguetable.find(params[:id])
    @leaguetable.destroy

    respond_to do |format|
      format.html { redirect_to leaguetables_url }
      format.json { head :no_content }
    end
  end
  
end
