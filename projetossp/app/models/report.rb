class Report < ActiveRecord::Base
  belongs_to :resquest_criminal
  belongs_to :user
end
