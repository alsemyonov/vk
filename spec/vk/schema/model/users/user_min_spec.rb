# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/users/user_min'

RSpec.describe Vk::Schema::Model::Users::UserMin do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :first_name }
    it { is_expected.to include :last_name }
    it { is_expected.to include :deactivated }
    it { is_expected.to include :hidden }
  end
end
