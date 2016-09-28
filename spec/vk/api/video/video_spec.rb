# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/video/video'

RSpec.describe Vk::API::Video::Video do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :owner_id }
    it { is_expected.to include :title }
    it { is_expected.to include :duration }
    it { is_expected.to include :description }
    it { is_expected.to include :date }
    it { is_expected.to include :views }
    it { is_expected.to include :comments }
    it { is_expected.to include :photo_130 }
    it { is_expected.to include :photo_320 }
    it { is_expected.to include :photo_800 }
    it { is_expected.to include :access_key }
    it { is_expected.to include :adding_date }
    it { is_expected.to include :player }
    it { is_expected.to include :can_edit }
    it { is_expected.to include :can_add }
    it { is_expected.to include :processing }
    it { is_expected.to include :live }
    it { is_expected.to include :files }
  end
end
