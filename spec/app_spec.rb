require 'spec_helper'

require 'app'

describe App do
  let(:sequence1) { described_class.new("1") }
  let(:sequence2) { described_class.new("1") }
  let(:sequence3) { described_class.new("11") }
  let(:sequence4) { described_class.new("21") }

  describe 'run' do
    it 'return Sequence instance' do
      expect(sequence1).to be_an_instance_of(App)
    end

    it 'generate state with n = 2' do
      expect(sequence2.run).to eql '11'
    end

    it 'generate state with n = 3' do
      expect(sequence3.run).to eq '21'
    end

    it 'generate state with n = 4' do
      expect(sequence4.run).to eql '1211'
    end
  end
end
