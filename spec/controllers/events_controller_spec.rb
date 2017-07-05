require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  it "should get index" do
    get :index
    expect(response).to be_success
    expect(assigns(:events)).not_to eq(nil)
  end
end
