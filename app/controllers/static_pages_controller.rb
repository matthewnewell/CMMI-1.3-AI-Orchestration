class StaticPagesController < ApplicationController
  def home
  end

  def about
    add_breadcrumb "Home", root_path
    add_breadcrumb "About"
  end

  def introduction
    add_breadcrumb "Home", root_path
    add_breadcrumb "Introduction"
  end

  def process_area_components
    add_breadcrumb "Home", root_path
    add_breadcrumb "Process Area Components"
  end

  def tying_it_all_together
    add_breadcrumb "Home", root_path
    add_breadcrumb "Tying It All Together"
  end

  def relationships_among_process_areas
    add_breadcrumb "Home", root_path
    add_breadcrumb "Relationships Among Process Areas"
  end

  def using_cmmi_models
    add_breadcrumb "Home", root_path
    add_breadcrumb "Using CMMI Models"
  end
end



