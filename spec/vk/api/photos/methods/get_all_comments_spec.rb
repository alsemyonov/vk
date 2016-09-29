# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/photos/methods/get_all_comments'

RSpec.describe Vk::API::Photos::Methods::GetAllComments do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :album_id }
    it { is_expected.to include :need_likes }
    it { is_expected.to include :offset }
    it { is_expected.to include :count }
  end
end
