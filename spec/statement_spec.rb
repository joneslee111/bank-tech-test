require 'statement'


describe Statement do
    
  describe 'testing rspec' do
    it 'should return the text' do
      expect(subject.this_is_test).to eq 'This is a test'
    end
  end

  it { is_expected.to respond_to :print_statement }



end