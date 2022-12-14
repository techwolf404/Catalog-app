class Items
  attr_accessor :publish_date, :label, :genre, :author, :archived, :source
  attr_reader :id

  def initialize(publish_date)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = false
  end

  def add_genre(genre)
    @genre = genre
  end

  def add_author(author)
    @author = author
    author.add_item(self) unless author.items.include?(self)
  end

  def add_label(label)
    @label = label
    label.add_item(self) unless label.items.include?(self)
  end

  def move_to_archive
    @archived = true if can_be_archived? == true
  end

  def can_be_archived?
    @archived = true
  end
end
