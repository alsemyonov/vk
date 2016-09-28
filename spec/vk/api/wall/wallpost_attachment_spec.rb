# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/wall/wallpost_attachment'

RSpec.describe Vk::API::Wall::WallpostAttachment do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :photo }
    it { is_expected.to include :posted_photo }
    it { is_expected.to include :audio }
    it { is_expected.to include :video }
    it { is_expected.to include :doc }
    it { is_expected.to include :link }
    it { is_expected.to include :graffiti }
    it { is_expected.to include :note }
    it { is_expected.to include :app }
    it { is_expected.to include :poll }
    it { is_expected.to include :page }
    it { is_expected.to include :album }
    it { is_expected.to include :photos_list }
    it { is_expected.to include :market_market_album }
    it { is_expected.to include :market }
    it { is_expected.to include :type }
  end
end
