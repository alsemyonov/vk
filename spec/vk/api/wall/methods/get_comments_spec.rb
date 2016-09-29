# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/wall/methods/get_comments'

RSpec.describe Vk::API::Wall::Methods::GetComments do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :post_id }
    it { is_expected.to include :need_likes }
    it { is_expected.to include :start_comment_id }
    it { is_expected.to include :offset }
    it { is_expected.to include :count }
    it { is_expected.to include :sort }
    it { is_expected.to include :preview_length }
    it { is_expected.to include :extended }
  end
end
