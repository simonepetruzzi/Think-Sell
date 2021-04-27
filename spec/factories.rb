FactoryBot.define do
    factory :user do
        email       {"example@mail.com"}
        password    {"secret"}
        id          {1}
    end
	
	factory :insertion do
		title       {"Inserzione di prova"}
		id          {1}
		user_id     {1}
		price       {100}
		views       {nil}
		body        {"Testo di prova per inserzione di prova"}
		
	
	end
end

# default call to factory
#user1 = create(:user)
#user1 attributes will be username: John Doe, password: secret

# override default arguments
#user2 = create(:user, username: "Bob")
#user2 attributes will be username: Bob, password: secret
