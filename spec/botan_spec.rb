RSpec.describe Botan do
  let(:token) { @token }
  let(:track) { described_class.track(1, 'text', 'search', token) }

  it 'has a version number' do
    expect(Botan::VERSION).not_to be nil
  end

  it 'has valid response' do
    expect(track).to include({'status' => 'accepted'})
  end

  context 'has configuration' do
    let(:token) { nil }

    it 'has valid response' do
      Botan.configuration.token = @token
      expect(track).to include({'status' => 'accepted'})
    end
  end
end
