require_relative '../lib/string_reverser'

RSpec.configure do |config|
  config.default_formatter = 'doc'
end

RSpec.describe StringReverser do
  let(:methods) { %i[method1 method2] }

  let(:string) { 'Hello, world!' }
  let(:reversed_string) { '!dlrow ,olleH' }

  it 'reverses an input string' do
    methods.each do |method|
      result = described_class.send(method, string)
      expect(result).to eq(reversed_string)
    end
  end
end
