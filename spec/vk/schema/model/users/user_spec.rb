# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/users/user'

RSpec.describe Vk::Schema::Model::Users::User do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :sex }
    it { is_expected.to include :screen_name }
    it { is_expected.to include :photo_50 }
    it { is_expected.to include :photo_100 }
    it { is_expected.to include :online }
  end
end
