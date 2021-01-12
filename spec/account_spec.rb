require 'account'

describe Account do
  describe '#transactions' do
    it 'has 0 transactions in history' do
      expect(subject.transactions).to be_empty
    end
  end
end
