# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/users/user'

RSpec.describe Vk::API::Users::User do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :sex }
    it { is_expected.to include :screen_name }
    it { is_expected.to include :photo_50 }
    it { is_expected.to include :photo_100 }
    it { is_expected.to include :online }
  end
end
