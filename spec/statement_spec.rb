require './lib/statement'

describe Statement do
  
  describe 'header' do
    it 'displays bank statement to user' do
      expect(subject.header).to eq 'Date || Credit || Debit || Balance'
    end
  end
end

def test_time_format
  Time.now.strftime('%d/%m/%Y')
end