require 'list'

# To solve https://coderbyte.com/algorithm/linked-list-middle-element

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

RSpec.describe '[]' do
  context 'on an empty list w/ positive index' do
    it 'raises index out of bound exception' do
      list = List.new
      index = 0
      expect { list[0] }.to raise_error(
        IndexOutOfBoundsException,
        "Index #{index} is beyond the bounds of this list."
      )
    end
  end
  context 'on a non-empty list' do
    it 'returns the item at index' do
      list = List.new(1, 2, 3, 4, 5)
      expect(list[3]).to eq 4
    end
  end
end
