require 'spec_helper'

describe App do

  Capybara.app = APPS.first #=> App

  describe '/' do

    it 'returns status code 200' do
      visit '/'
      expect(page.status_code).to be 200
    end
  end
end
