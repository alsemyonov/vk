require 'spec_helper'

describe Vk::Client do
  describe 'class' do
    subject { Vk::Client }

    it { is_expected.to respond_to(:auth_key) }
    it { is_expected.to respond_to(:authenticated?) }
    it { expect(Vk::Client.auth_key(VK_VIEWER_ID)).to eq(VK_AUTH_KEY) }
    it { expect(Vk::Client.authenticated?(VK_VIEWER_ID, VK_AUTH_KEY)).to be true }
  end

  describe 'instance' do
    let(:client) { Vk::Client.new }
    subject { client }

    it { is_expected.to respond_to(:request) }
  end
end
