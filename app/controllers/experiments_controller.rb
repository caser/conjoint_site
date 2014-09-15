class ExperimentsController < ApplicationController
  def index
    @experiments = Experiment.all
    render 'index'
  end

  def new
  end

  def edit
  end
end
