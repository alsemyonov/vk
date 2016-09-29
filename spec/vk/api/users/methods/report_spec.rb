# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/users/methods/report'

RSpec.describe Vk::API::Users::Methods::Report do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :user_id }
    it { is_expected.to include :type }
    it { is_expected.to include :comment }
  end
end
