class Word < Neo4j::Rails::Model
  index :word
  property :word, :type => :string

  property :found_in_text_as_first_word, :default => 0, :type => :integer
  property :worked_as_first_word, :default => 0, :type => :integer
  property :worked_poorly_as_first_word, :default => 0, :type => :integer

  property :found_in_text_as_last_word, :default => 0, :type => :integer
  property :worked_as_last_word, :default => 0, :type => :integer
  property :worked_poorly_as_last_word, :default => 0, :type => :integer

  validates :word, :presences => true, :uniqueness => { :case_sensitive => false }
  validates :found_in_text_as_first_word, :presense => true, :numericality => {:greater_than_or_equal_to => 0, :only_integer => true}
  validates :worked_as_first_word, :presense => true, :numericality => {:greater_than_or_equal_to => 0, :only_integer => true}
  validates :worked_poorly_as_first_word, :presense => true, :numericality => {:greater_than_or_equal_to => 0, :only_integer => true}
  validates :found_in_text_as_last_word, :presense => true, :numericality => {:greater_than_or_equal_to => 0, :only_integer => true}
  validates :worked_as_last_word, :presense => true, :numericality => {:greater_than_or_equal_to => 0, :only_integer => true}
  validates :worked_poorly_as_last_word, :presense => true, :numericality => {:greater_than_or_equal_to => 0, :only_integer => true}

  has_n(:word).relationship(WordOrder)

end
