require 'account'

describe Account do
  let(:account) { Account.new }
  
  describe 'testing rspec' do
    it 'should return the text' do
      expect(subject.this_is_test).to eq 'This is a test'
    end
  end

  it { is_expected.to respond_to(:deposit).with(1).argument }

  it 'should have a starting balance of 0' do
    expect(subject.balance).to eq(0)
  end
 
 
  describe '#deposit' do
    before do
      account.deposit(500)
    end

    it 'deposit should add the amount to the balance' do
      expect(account.balance).to eq(500)
    end
  end

  describe '#withdraw' do
    before do
      account.deposit(500)
      account.withdraw(250)
    end

    it 'should dedcut amount from balance' do
      expect(account.balance).to eq(250) 
    end
  end
  
  


   
    
end