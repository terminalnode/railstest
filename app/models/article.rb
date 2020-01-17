class Article < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 5 }

  def listing_with_time
    "(#{self.created_at.strftime("%Y-%m-%d at %H:%M")}) #{self.title}"
  end
end
