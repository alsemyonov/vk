# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/video/methods/edit'

RSpec.describe Vk::API::Video::Methods::Edit do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :owner_id }
    it { is_expected.to include :video_id }
    it { is_expected.to include :name }
    it { is_expected.to include :desc }
    it { is_expected.to include :privacy_view }
    it { is_expected.to include :privacy_comment }
    it { is_expected.to include :no_comments }
    it { is_expected.to include :repeat }
  end
end
