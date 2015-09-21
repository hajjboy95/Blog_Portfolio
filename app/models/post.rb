class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title , use: :slugged


  def find_for_index_page
       all.limit(3).order("created_at desc")
  end



end
