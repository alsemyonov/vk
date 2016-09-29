# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/groups/methods/create'

RSpec.describe Vk::API::Groups::Methods::Create do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :title }
    it { is_expected.to include :description }
    it { is_expected.to include :type }
    it { is_expected.to include :public_category }
    it { is_expected.to include :subtype }
  end
end
