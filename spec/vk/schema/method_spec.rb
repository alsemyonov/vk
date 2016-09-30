# frozen_string_literal: true
require 'spec_helper'

RSpec.describe Vk::Schema::Method do
  describe 'class' do
    subject { described_class }

    it { is_expected.to be < Dry::Struct }
  end
end

class SampleMethod < Vk::Schema::Method
  attribute :string, Vk::API::Types::Coercible::String
  attribute :integer, Vk::API::Types::Coercible::Int.optional.default(nil)
end

RSpec.describe SampleMethod do
  subject(:sample_method) { described_class.new(arguments) }
  let(:arguments) do
    {
      string: 'String',
      integer: 1
    }
  end

  it { is_expected.to respond_to(:string) }
  it { is_expected.to respond_to(:integer) }

  describe 'with required arguments' do
    describe 'not passed' do
      let(:arguments) { {} }

      it 'raises an exception' do
        expect { subject }.to raise_error(Dry::Struct::Error)
      end
    end

    describe 'passed' do
      let(:arguments) { { string: 'string', integer: 1 } }

      it 'does not raise an exception' do
        expect { subject }.not_to raise_error
      end
      it 'returns all arguments' do
        expect(subject.to_hash).to eq(string: 'string', integer: 1)
      end

      describe 'but optional are not' do
        let(:arguments) { { string: 'string' } }

        it 'does not raise an exception' do
          expect { subject }.not_to raise_error
        end
        it 'returns only passed arguments' do
          expect(subject.to_hash).to eq(string: 'string')
        end
      end
    end
  end
end
