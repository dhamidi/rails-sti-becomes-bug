class EmailEvent < Event
  SUBTYPES = {
    sent: 'sent',
    received: 'received'
  }.freeze

  attribute :outcome, :string

  enum subtype: SUBTYPES

  validates :outcome, inclusion: { in: %w[follow_up archive] }
end
