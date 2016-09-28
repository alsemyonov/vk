# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/wall/posted_photo'

RSpec.describe Vk::API::Wall::PostedPhoto do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :owner_id }
    it { is_expected.to include :photo_130 }
    it { is_expected.to include :photo_604 }
  end
end
