# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sendgrid_session',
  :secret      => 'e56209d9419d96fac2946fac345e9b0d414d5e529310e1da12ea258dcd31ab11c4864920c786e35089d3fcffff87dde2b4b79fc4e997ad71fe5354df9dbbd5d1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
