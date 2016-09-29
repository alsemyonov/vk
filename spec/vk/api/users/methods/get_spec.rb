# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/users/methods/get'

RSpec.describe Vk::API::Users::Methods::Get do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :user_ids }
    it { is_expected.to include :fields }
    it { is_expected.to include :name_case }
  end
end
