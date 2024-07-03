class DirectorsController < ApplicationController
  
  def index
    render({:template => "directors_template/list"})
  end
  
  def show
    the_id = params.fetch("the_id")
    matching_records = Director.where({:id => the_id})

    @the_director = matching_records.at(0)

    render({:template => "directors_template/show"})
  end
  
  def youngest
  

    render({:template => "directors_template/younger"})
  end
  
  def eldest


    render({:template => "directors_template/older"})
  end

end
