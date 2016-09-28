# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/widgets/comment_replies_item'

RSpec.describe Vk::API::Widgets::CommentRepliesItem do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :cid }
    it { is_expected.to include :uid }
    it { is_expected.to include :date }
    it { is_expected.to include :text }
    it { is_expected.to include :likes }
    it { is_expected.to include :user }
  end
end
