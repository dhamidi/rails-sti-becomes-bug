RSpec.describe Event do
  describe 'single table inheritance' do
    context 'when an EmailEvent becomes a MessageEvent' do
      let(:email_event) { EmailEvent.new(subtype: 'sent', outcome: 'follow_up') }

      it 'uses MessageEvent validations for assignment' do
        message_event = email_event.becomes!(MessageEvent)

        expect do
          message_event.subtype = 'user_generated'
          message_event.outcome = 'message_delivered'
        end.not_to raise_error
      end
    end
  end
end
