require 'active_record'
require_relative '../../database_connection.rb'

describe 'datebase_connection' do  
    it 'makes a connection to the data base' do 
        expect(ActiveRecord::Base.connection.current_database).to eq 'makersbnb_test' 
    end 
end  