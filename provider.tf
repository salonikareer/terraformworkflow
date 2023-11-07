terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      version = "3.27.3"
    }
  }
}

provider "newrelic" {
  account_id = 4038255

  api_key    = "NRAK-RH28YY4XCFQ3TGNQ23FRFK561TC"
  region     = "EU"
}
