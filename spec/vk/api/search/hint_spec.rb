# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/search/hint'

RSpec.describe Vk::API::Search::Hint do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :type }
    it { is_expected.to include :section }
    it { is_expected.to include :description }
    it { is_expected.to include :global }
    it { is_expected.to include :group }
    it { is_expected.to include :profile }
  end
end
