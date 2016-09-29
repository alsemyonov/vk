# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/video/methods/save'

RSpec.describe Vk::API::Video::Methods::Save do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :name }
    it { is_expected.to include :description }
    it { is_expected.to include :is_private }
    it { is_expected.to include :wallpost }
    it { is_expected.to include :link }
    it { is_expected.to include :group_id }
    it { is_expected.to include :album_id }
    it { is_expected.to include :privacy_view }
    it { is_expected.to include :privacy_comment }
    it { is_expected.to include :no_comments }
    it { is_expected.to include :repeat }
  end
end
