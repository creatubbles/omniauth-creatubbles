describe 'OmniAuth::Strategies::Creatubbles' do
  subject do
    OmniAuth::Strategies::Creatubbles.new({})
  end

  context "client options" do
    it 'should have correct name' do
      expect(subject.options.name).to eq("creatubbles")
    end

    it 'should have correct site' do
      expect(subject.options.client_options.site).to eq('https://api.creatubbles.com')
    end
  end
end
