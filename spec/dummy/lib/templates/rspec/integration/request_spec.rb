require 'rails_helper'

RSpec.describe '<%= class_name.pluralize %>', type: :request do
  let(:user) { create :admin }
  let(:<%= file_name %>) { create :<%= file_name %> }

  before do
    login_as(user, scope: :user)
  end

  describe 'new' do
    it 'renders the new template' do
      visit new_<%= file_name %>_path
      expect(page).to have_content('New <%= file_name.humanize %>')
    end
  end

  describe 'edit' do
    it 'renders the edit template' do
      visit edit_<%= file_name %>_path(<%= file_name %>)
      expect(page).to have_content('Editing <%= file_name.humanize %>')
    end
  end

  describe 'index' do
    it 'displays the <%= table_name.pluralize %>' do
      <%= file_name %>
      visit <%= index_helper %>_path
      expect(page).to have_content(<%= file_name %>.to_s)
    end
  end

  describe 'show' do
    it 'shows the <%= file_name %>' do
      visit <%= file_name %>_path(<%= file_name %>)
      expect(page).to have_content(<%= file_name %>.to_s)
    end
  end
end
