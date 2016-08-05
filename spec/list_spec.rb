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

RSpec.describe '#to_s' do
  context 'on an empty list' do
    it 'returns a blank string' do
      list = List.new
      expect(list.to_s).to eq ''
    end
  end
  context 'with a positive number of links' do
    it 'shows each link' do
      list = List.new 1, 2, 3, 4, 5
      expect(list.to_s).to eq '1 - 2 - 3 - 4 - 5'
    end
  end
end