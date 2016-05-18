require_relative '../lib/port_sanitizer'

RSpec.describe PortSanitizer do
  describe "self.sanitize" do
    let(:default_port){ 8125 }

    subject { described_class.sanitize(port) }

    context 'a port between 1024 and 49151 is informed' do
      let(:port) { 8234 }

      it 'returns the informed port' do
        is_expected.to eq(port)
      end
    end

    context 'a port bellow 1024 is informed' do
      let(:port) { 1 }

      it 'returns the default port' do
        is_expected.to eq(default_port)
      end
    end

    context 'a port above 49151 is informed' do
      let(:port) { 49152 }

      it 'returns the default port' do
        is_expected.to eq(default_port)
      end
    end

    context 'no port is informed' do
      let(:port) { nil }

      it 'returns the default port' do
        is_expected.to eq(default_port)
      end
    end

    context 'a letter or text is informed as a port' do
      let(:port) { 'test' }

      it 'returns the default port' do
        is_expected.to eq(default_port)
      end
    end
  end
end
