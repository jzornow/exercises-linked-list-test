require 'list'

RSpec.describe '#length' do
  context 'with no links' do
    it 'returns 0' do
      list = List.new
      expect(list.length).to eq 0
    end
  end
end