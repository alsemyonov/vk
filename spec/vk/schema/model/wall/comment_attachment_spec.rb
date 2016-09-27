# frozen_string_literal: true
require 'spec_helper'
require 'vk/schema/model/wall/comment_attachment'

RSpec.describe Vk::Schema::Model::Wall::CommentAttachment do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Model }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :photo }
    it { is_expected.to include :audio }
    it { is_expected.to include :video }
    it { is_expected.to include :doc }
    it { is_expected.to include :link }
    it { is_expected.to include :note }
    it { is_expected.to include :page }
    it { is_expected.to include :market_market_album }
    it { is_expected.to include :market }
    it { is_expected.to include :sticker }
    it { is_expected.to include :type }
  end
end
