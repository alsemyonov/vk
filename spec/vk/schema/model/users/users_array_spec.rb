# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/users/users_array'

RSpec.describe Vk::Schema::Model::Users::UsersArray do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :count }
    it { is_expected.to include :items }
  end
end
