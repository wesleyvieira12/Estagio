class Report < ActiveRecord::Base
  has_many :image_reports, :dependent => :destroy
  belongs_to :resquest_criminal
  belongs_to :user

  # Atributos complextos inseridos no formulário do Report
  accepts_nested_attributes_for :image_reports, reject_if: :all_blank, allow_destroy: true
end
