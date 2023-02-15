#* Following seed deployment, uncomment below and replace TODOs 

terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "demo-tf-remote-state-69b3ejx7up"                                             #* replace with remote_state_bucket name
    dynamodb_table = "demo-tf-locks"                                                               #* replace with tf_locks_table name
    region         = "us-west-2"                                                                   #* replace with deployment region
    key            = "pwc-devops-demo/PROD/terraform.tfstate"                                  #* replace with name of the repo which will define all pipelines
    kms_key_id     = "arn:aws:kms:us-west-2:662802362591:key/3c493b6b-0067-42df-a848-e71b3515debf" #* replace with cmk_arn
  }
}
