class Word < Neo4j::Rails::Model

  property :word, :type => :string

  property :found_in_text_as_first_word, :default => 0, :type => :integer
  property :worked_as_first_word, :default => 0, :type => :integer
  property :worked_poorly_as_first_word, :default => 0, :type => :integer

  property :found_in_text_as_last_word, :default => 0, :type => :integer
  property :worked_as_last_word, :default => 0, :type => :integer
  property :worked_poorly_as_last_word, :default => 0, :type => :integer

  index :word

  validates :word, :presense => true, \
                   :uniqueness => { :case_sensitive => false }

  validates :found_in_text_as_first_word :worked_as_first_word \
            :worked_poorly_as_first_word :found_in_text_as_last_word \
            :worked_as_last_word :worked_poorly_as_last_word, \
            :presense => true, \
            :numericality => {:greater_than_or_equal_to => 0}

  has_n(:comes_before).to(Word).relationship(WordOrder)
  has_n(:comes_after).from(Word).relationship(WordOrder)

end
