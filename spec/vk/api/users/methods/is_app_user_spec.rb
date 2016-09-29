# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/users/methods/is_app_user'

RSpec.describe Vk::API::Users::Methods::IsAppUser do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :user_id }
  end
end
