require 'list'

RSpec.describe '#length' do
  context 'with no links' do
    it 'returns 0' do
      list = List.new
      expect(list.length).to eq 0
    end
  end
  context 'with a positive number of links' do
    it 'returns the number of links' do
      list = List.new 1, 2, 3, 4, 5
      expect(list.length).to eq 5
    end
  end
end