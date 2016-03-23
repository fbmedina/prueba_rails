class ExperimentsController < ApplicationController
  layout "bootstrap"

  before_action :segundos

  def page1
  end

  def page2
  end

  def page3
  end

  private
    def segundos
      @segs = 300
    end
end
