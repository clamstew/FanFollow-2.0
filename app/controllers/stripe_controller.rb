class StripeController < ApplicationController
 
  def stripe_account_attributes
    {
      :stripe_user_id => oauth_hash['uid'],
      :stripe_publishable_key => oauth_hash['info']['stripe_publishable_key'],
      :token => oauth_hash['credentials']['token']
    }
  end

  def oauth_hash
    request.env['omniauth.auth']
  end

end