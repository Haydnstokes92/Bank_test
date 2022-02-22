require 'account'

describe Account do

  describe 'starting balance' do
    it 'Has a balance of 0' do
      expect(subject.balance).to eq 0
    end
  end

  describe 'withdraw' do
    it 'decreases the balance after withdrawel' do
      subject.deposit(200)
      subject.withdraw(100)
      expect(subject.balance).to eq 100
    end
  end

  describe 'deposit' do
    it 'increases the balance after a deposit is made' do
      subject.deposit(50)
      expect(subject.balance).to eq 50
    end
  end

  describe 'withdraw error' do    
    it 'raises an error if you try to withdraw more than your balance' do      
      subject.deposit(50)      
      expect { subject.withdraw(150) }.to raise_error 'Insufficient funds available'
    end
  end
end

  
