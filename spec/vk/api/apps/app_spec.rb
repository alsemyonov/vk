# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/apps/app'

RSpec.describe Vk::API::Apps::App do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Object }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :id }
    it { is_expected.to include :title }
    it { is_expected.to include :screen_name }
    it { is_expected.to include :description }
    it { is_expected.to include :icon_100 }
    it { is_expected.to include :icon_200 }
    it { is_expected.to include :icon_75 }
    it { is_expected.to include :icon_50 }
    it { is_expected.to include :icon_16 }
    it { is_expected.to include :banner_186 }
    it { is_expected.to include :banner_896 }
    it { is_expected.to include :type }
    it { is_expected.to include :section }
    it { is_expected.to include :author_url }
    it { is_expected.to include :author_id }
    it { is_expected.to include :author_group }
    it { is_expected.to include :members_count }
    it { is_expected.to include :published_date }
    it { is_expected.to include :catalog_position }
    it { is_expected.to include :screenshots }
    it { is_expected.to include :international }
    it { is_expected.to include :leaderboard_type }
    it { is_expected.to include :genre_id }
    it { is_expected.to include :genre }
    it { is_expected.to include :platform_id }
    it { is_expected.to include :is_in_catalog }
  end
end
