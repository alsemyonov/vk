# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/fave/methods/add_group'

RSpec.describe Vk::API::Fave::Methods::AddGroup do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :group_id }
  end
end
