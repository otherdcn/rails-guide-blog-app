module Visible
  extend ActiveSupport::Concern

  #included do
  #  VALID_STATUSES = ['public', 'private', 'archived']

  #  validates :status, in: VALID_STATUSES
  #end
 
  # <!-- <p>Our blog has <%= Article.public_count %> articles and counting!</p> -->
  # The above should be in [app/views/articles/index.html.erb]
  # But the error below always appears for [class_methods] and [included do] block above:
  # ActionView::Template::Error (Unknown validator: 'InValidator'):
  class_methods do #=> this is not working properly
    def public_count
      where(status: 'public').count
    end
  end

  def archived?
    status == 'archived'
  end
end
