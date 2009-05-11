# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cukesteps-test_session',
  :secret      => 'db5e6aa90e44b10c2a55ffa630f20b971ee2b9a5210913192057aaa822c8eb4b88ace1e834605e98a3b7c36a0d6532c9e14bf6b66ce95496a662b502860b8eb1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
