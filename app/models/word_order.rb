class WordOrder < Neo4j::Rails::Relationship

  property :found_in_text, :default => 0, :type => :integer
  property :worked_in_text_well, :default => 0, :type => :integer
  property :worked_in_text_poorly, :default => 0, :type => :integer

  validates :found_in_text, :presence => true, :numericality => {:greater_than_or_equal_to => 0, :only_integer => true}
  validates :worked_in_text_well, :presence => true, :numericality => {:greater_than_or_equal_to => 0, :only_integer => true}
  validates :worked_in_text_poorly, :presence => true, :numericality => {:greater_than_or_equal_to => 0, :only_integer => true}

end
