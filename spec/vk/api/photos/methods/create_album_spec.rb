# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/photos/methods/create_album'

RSpec.describe Vk::API::Photos::Methods::CreateAlbum do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :title }
    it { is_expected.to include :group_id }
    it { is_expected.to include :description }
    it { is_expected.to include :privacy_view }
    it { is_expected.to include :privacy_comment }
    it { is_expected.to include :upload_by_admins_only }
    it { is_expected.to include :comments_disabled }
  end
end
