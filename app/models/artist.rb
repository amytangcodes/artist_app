class Artist < ApplicationRecord
  
  validates :name, presence: true

  # self.table_name = "performers"

  # self.ignored_columns = %w(created_at updated_at)
  # https://blog.bigbinary.com/2016/05/24/rails-5-adds-active-record-ignored-columns.html

end
