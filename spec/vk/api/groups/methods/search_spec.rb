# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/groups/methods/search'

RSpec.describe Vk::API::Groups::Methods::Search do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :q }
    it { is_expected.to include :type }
    it { is_expected.to include :country_id }
    it { is_expected.to include :city_id }
    it { is_expected.to include :future }
    it { is_expected.to include :market }
    it { is_expected.to include :sort }
    it { is_expected.to include :offset }
    it { is_expected.to include :count }
  end
end
