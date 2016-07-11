require('rspec')
require('definitions')

describe(Definition) do
  before() do
    Definition.clear()
  end

  describe('#initialize') do
    it('returns the definition value for a given Definition object') do
      test_definition = Definition.new({:definition => 'This is a test definition.'})
      expect(test_definition.definition()).to eq('This is a test definition.')
    end
  end
end
