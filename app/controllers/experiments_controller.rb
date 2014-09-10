class ExperimentsController < ApplicationController
  def index
    @experiments = Experiment.all
  end

  def new
  end

  def edit
  end
end
