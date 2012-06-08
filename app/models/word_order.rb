class WordOrder < Neo4j::Rails::Relationship

  property :found_in_text, :default => 0, :type => :integer
  property :worked_in_text_well, :default => 0, :type => :integer
  property :worked_in_text_poorly, :default => 0, :type => :integer

  validates :found_in_text :worked_in_text_well \
            :worked_in_text_poorly, :presense => true, \
            :numericality => {:greater_than_or_equal_to => 0}

end
