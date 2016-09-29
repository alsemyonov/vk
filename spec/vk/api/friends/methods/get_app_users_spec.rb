# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/friends/methods/get_app_users'

RSpec.describe Vk::API::Friends::Methods::GetAppUsers do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

  end
end
