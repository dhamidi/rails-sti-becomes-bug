class MessageEvent < Event
  SUBTYPES = {
    system_generated: 'system_generated',
    user_generated: 'user_generated'
  }.freeze

  attribute :outcome, :string
  enum subtype: SUBTYPES

  validates :outcome, inclusion: { in: %w[user_notified message_delivered] }
end
