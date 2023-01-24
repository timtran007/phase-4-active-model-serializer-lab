class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :short_content

  def short_content
    "title: #{self.object.title}
    short_content: #{self.object.content[1..39]}..."
  end
  
  belongs_to :author
  has_many :tags
end
