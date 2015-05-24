class News < ActiveRecord::Base
  def to_s
    "Title: #{title}"
  end
end