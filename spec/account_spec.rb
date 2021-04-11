# frozen_string_literal: true

require 'account'

describe Account do
  let(:account) { Account.new }

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
    it 'should dedcut amount from balance' do
      account.deposit(500)
      account.withdraw(250)
      account.withdraw(20)
      expect(account.balance).to eq(230)
    end

    it 'should raise an error when not enough in account' do
      account.deposit(500)
      expect { account.withdraw(501) }.to raise_error 'You a broke boy, go earn some cheddar'
    end
  end

  describe '#transaction' do
    it 'should print correct transaction' do
      account.deposit(500)
      account.deposit(250)
      account.withdraw(50)

      expect(account.transactions).to eq(['08/04/21  || nil      || 500.00   || 500.00',
                                         '08/04/21  || nil      || 250.00   || 750.00',
                                         '08/04/21  || 50.00    || nil      || 700.00'])
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
