module MiddleMethodSpecs
  def middle_method_specs(method_name)
    context 'on an empty list' do
      it 'raises no middle exception' do
        list = List.new
        expect { 
          list.public_send(method_name) 
        }.to raise_error(NoMiddleException)
      end
    end
    context 'on a list with an odd number of elements' do
      it 'returns the middle element' do
        list = List.new 1, 2, 3
        expect(list.public_send(method_name)).to eq 2
      end
    end
    context ' on a list with an even number of elements' do
      it 'returns the element before the center' do
        list = List.new 1, 2, 3, 4
        expect(list.public_send(method_name)).to eq 2
      end
    end
  end
end