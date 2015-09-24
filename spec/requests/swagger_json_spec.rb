require 'spec_helper'

RSpec.describe "Swagger.json", :type => :request do
  before { get "/swagger.json" }

  subject { response }

  let(:parsed_body) { JSON.parse response.body }
  let(:swagger) { Apivore::Swagger.new parsed_body }

  its(:code) { is_expected.to eq("200") }

  it 'produces valid Swagger 2.0' do
    expect(swagger.validate).to be_empty
  end
end
