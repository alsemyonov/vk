# frozen_string_literal: true
require 'spec_helper'
require 'vk/api/groups/methods/edit'

RSpec.describe Vk::API::Groups::Methods::Edit do
  subject(:model) { described_class }
  it { is_expected.to be < Dry::Struct }
  it { is_expected.to be < Vk::Schema::Method }

  describe 'attributes' do
    subject(:attributes) { model.instance_methods(false) }

    it { is_expected.to include :group_id }
    it { is_expected.to include :title }
    it { is_expected.to include :description }
    it { is_expected.to include :screen_name }
    it { is_expected.to include :access }
    it { is_expected.to include :website }
    it { is_expected.to include :subject }
    it { is_expected.to include :email }
    it { is_expected.to include :phone }
    it { is_expected.to include :rss }
    it { is_expected.to include :event_start_date }
    it { is_expected.to include :event_finish_date }
    it { is_expected.to include :event_group_id }
    it { is_expected.to include :public_category }
    it { is_expected.to include :public_subcategory }
    it { is_expected.to include :public_date }
    it { is_expected.to include :wall }
    it { is_expected.to include :topics }
    it { is_expected.to include :photos }
    it { is_expected.to include :video }
    it { is_expected.to include :audio }
    it { is_expected.to include :links }
    it { is_expected.to include :events }
    it { is_expected.to include :places }
    it { is_expected.to include :contacts }
    it { is_expected.to include :docs }
    it { is_expected.to include :wiki }
    it { is_expected.to include :messages }
    it { is_expected.to include :age_limits }
    it { is_expected.to include :market }
    it { is_expected.to include :market_comments }
    it { is_expected.to include :market_country }
    it { is_expected.to include :market_city }
    it { is_expected.to include :market_currency }
    it { is_expected.to include :market_contact }
    it { is_expected.to include :market_wiki }
    it { is_expected.to include :obscene_filter }
    it { is_expected.to include :obscene_stopwords }
    it { is_expected.to include :obscene_words }
  end
end
