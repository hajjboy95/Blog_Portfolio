class Project < ActiveRecord::Base

  def find_for_index_page
    all.limit(3).order("created_at desc")
  end


end
