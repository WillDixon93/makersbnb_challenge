feature 'User logout' do 
    scenario 'So a user can protect his/her privacy, they can log out' do 
        visit '/spaces' 
        click_button 'Logout' 
        expect(current_path).to eq '/'
    end 
end 