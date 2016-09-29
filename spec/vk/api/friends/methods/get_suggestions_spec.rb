# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/friends/methods/get_suggestions'

RSpec.describe Vk::API::Friends::Methods::GetSuggestions do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :filter }
    it { is_expected.to include :count }
    it { is_expected.to include :offset }
    it { is_expected.to include :fields }
    it { is_expected.to include :name_case }
  end
end
