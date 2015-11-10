

get '\charge' do

    body = JSON.parse request.body.read
    customer = Stripe::Customer.create(
      card:   body['stripeToken'],
      email:  body['email'],
      account_balance: 0,
      description: body['toyName'],
      address: city => body["city"], country => body['country'], line1 => body['adress'], postal_code => body['postalCode'],
      name: body['name']
    )




end
