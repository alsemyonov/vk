# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/wall/graffiti'

RSpec.describe Vk::API::Wall::Graffiti do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :owner_id }
    it { is_expected.to include :photo_200 }
    it { is_expected.to include :photo_586 }
  end
end
