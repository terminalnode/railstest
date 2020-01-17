class Article < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 5 }

  def time_as_s
    "#{self.created_at.strftime("%Y-%m-%d at %H:%M")}"
  end
end
