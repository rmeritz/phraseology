class Word < Neo4j::Rails::Model
  index :word
  property :word, :type => :string

  property :found_in_text_as_first_word, :default => 0
  property :worked_as_first_word, :default => 0
  property :worked_poorly_as_first_word, :default => 0

  property :found_in_text_as_last_word, :default => 0
  property :worked_as_last_word, :default => 0
  property :worked_poorly_as_last_word, :default => 0

  validates :word, :presence => true
  validates :found_in_text_as_first_word, :presence => true, :numericality => {:greater_than_or_equal_to => 0, :only_integer => true}
  validates :worked_as_first_word, :presence => true, :numericality => {:greater_than_or_equal_to => 0, :only_integer => true}
  validates :worked_poorly_as_first_word, :presence => true, :numericality => {:greater_than_or_equal_to => 0, :only_integer => true}
  validates :found_in_text_as_last_word, :presence => true, :numericality => {:greater_than_or_equal_to => 0, :only_integer => true}
  validates :worked_as_last_word, :presence => true, :numericality => {:greater_than_or_equal_to => 0, :only_integer => true}
  validates :worked_poorly_as_last_word, :presence => true, :numericality => {:greater_than_or_equal_to => 0, :only_integer => true}

  has_n(:word).relationship(WordOrder)

end
