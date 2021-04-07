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
      account.deposit(250)
    end

    it 'deposit should add the amount to the balance' do
      expect(account.balance).to eq(750)
    end

  end

  describe '#withdraw' do
    before do
      account.deposit(500)
      account.withdraw(250)
      account.withdraw(20)
    end

    it 'should dedcut amount from balance' do
      expect(account.balance).to eq(230) 
    end
  end

    describe '#transaction' do
      it 'should print correct transaction' do
        account.deposit(500)
        account.deposit(250)
        account.withdraw(50)

        expect(account.transaction).to eq(["07/04/21  || nil      || 500.00   || 500.00", "07/04/21  || nil      || 250.00   || 750.00", "07/04/21  || 50.00    || nil      || 700.00"])
      end
    end

    # describe '#bank statement' do
    #   it 'should print correct statement' do
    #     account.deposit(500)
    #     account.deposit(250)
    #     account.withdraw(50)

    #     expect(account.bank_statement).to eq("date      || withdraw || deposit  || balance  \n# {subject.time.strftime('%d/%m/%y')} || 50.00    || nil      || 700.00   \n# {subject.time.strftime('%d/%m/%y')} || nil      || 250.00   || 750.00   \n# {subject.time.strftime('%d/%m/%y')} || nil      || 500.00   || 500.00")
    #   end
    # end

  end