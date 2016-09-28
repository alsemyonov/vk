# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/widgets/comment_media'

RSpec.describe Vk::API::Widgets::CommentMedia do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :type }
    it { is_expected.to include :owner_id }
    it { is_expected.to include :item_id }
    it { is_expected.to include :thumb_src }
  end
end
