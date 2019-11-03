module PhcdevworksPress
  class Article::Post < ApplicationRecord

    # Clean URL Initialize
    extend FriendlyId

    # Paper Trail Initialize
    has_paper_trail :class_name => "PhcdevworksPress::ArticlePostVersions"

    # Image Upload
    has_one_attached :post_image

    # Relationships
    has_and_belongs_to_many :categories, class_name: "Article::Category", :join_table => "phcdevworks_press_categories_posts"
    belongs_to :user, class_name: "PhcdevworksAccounts::User"

    # Form Fields Validation
    validates :post_title,
      presence: true

    validates :post_text,
      presence: true

    # Clean URL Define
    friendly_id :phcdev_article_post_nice_urls, use: [:slugged, :finders]

    def phcdev_article_post_nice_urls
      [:post_title]
    end

  end
end
