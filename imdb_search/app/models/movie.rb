class Movie < ApplicationRecord
  belongs_to :director
  searchkick
  # include PgSearch::Model
  # pg_search_scope :search_by_title_and_syllabus,
  #   against: [:title, :syllabus],
  #   associated_against: {
  #     director: [:first_name, :last_name]
  #   },
  #   using: {
  #     tsearch: { prefix: true }
  #   }
  # multisearchable against: [:title, :syllabus]
end
