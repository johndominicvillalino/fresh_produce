require 'rails_helper'

describe 'product endpoints', :type => :request do 

    it 'should return error if not login' do
        get v1_my_products_path
        expect(response.status).to eq(401)
    end

    it 'should return user products' do

  
        acc = {   
            first_name:'test',
            last_name:'account',
            user_name:'test123',
            email:'test2@email.com',
            role:'farmer',
            password:'qweqweqwe',
            password_confirmation:'qweqweqwe',
            image:'',
        }
                
        post user_registration_path(acc)
 
        binding.pry    
    
        get v1_my_products_path, :header => response.header
        expect(response.status).to eq(200)
    end

    


end