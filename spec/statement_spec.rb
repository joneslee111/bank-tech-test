# frozen_string_literal: true

require 'statement'

describe Statement do
  subject(:statement) { described_class.new }
 


  it { is_expected.to respond_to :print_statement }

  #   describe '#print_statement' do
  #     let (:transaction) {["07/04/2021 || 500.00 || || 500.00"]}
  #     let (:header) {"date || withdraw || deposit || balance"}
  #     let (:new_transaction) {"07/04/2021 || 500.00 || || 500.00"}
  #       it 'should print the statement' do
  #           expect(subject.print_statement(transaction)).to eq(header + new_transaction)
  #       end
  #   end
end
