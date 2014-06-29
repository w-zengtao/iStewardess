::CarrierWave.configure do |config|
  config.storage             = :qiniu
  config.qiniu_access_key    = "N_a7qkzjpzxWLQsk50vHftQhFgQXiiKEChHqlwGA"
  config.qiniu_secret_key    = 'avlDKqPNQAtPbCArSa7S4ibCFe8aHu4tOwHUOKKS'
  config.qiniu_bucket        = "istewardess"
  config.qiniu_bucket_domain = "istewardess.com"
  # config.qiniu_bucket_private= true #default is false
  config.qiniu_block_size    = 4*1024*1024
  config.qiniu_protocol      = "http"
end