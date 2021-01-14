require 'account'

describe Account do
  let(:timestamp) { Time.now.strftime('%d/%m/%Y') }

  describe '#initialize' do
    it 'balance starts nil' do
      expect(subject.transactions).to be_empty
    end

    it 'transactions in history empty' do
      expect(subject.balance).to eq 0
    end
  end

  describe '#deposit' do
    it "deposits money into account" do
      subject.deposit(100)
      expect(subject.balance).to eq 100
    end
  end

  describe '#withdraw' do
    it "withdraws money from account" do
      subject.withdraw(50)
      expect(subject.balance).to eq -50
    end
  end

  describe '#print_statement' do
    it 'prints header' do
      header = "date || credit || debit || Balance\n"
      expect { subject.print_statement }.to output(header).to_stdout
    end

    it 'prints header' do
      subject.deposit(100)
      header = "date || credit || debit || Balance\n#{timestamp}|| 100 || || Balance\n"
      expect { subject.print_statement }.to output(header).to_stdout
    end
  end
end
