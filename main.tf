terraform {
  
  required_providers {
    newrelic = {
        source = "newrelic/newrelic"
        version = "3.2.1"
    }
  }
}

provider "newrelic" {
  account_id =   3649334  # Your New Relic accNRAK-KAA0NS59T13Eount ID
  api_key = "NRAK-J0L1ICZGI7HFZ57V2Z9BA3TZUCC" # Your New Relic user key
  region  = "US"        # US or EU (defaults to US)
}

resource "newrelic_workload" "test_workload" {
    name = "Test Workload222"
    account_id = 3649334 

    entity_guids = ["MzY0OTMzNHxJTkZSQXxOQXw0MDk4NTc0ODc1NzI4NTM1Mjc"]

    entity_search_query {
        query = "name like '%Example application%'"
    }

    scope_account_ids =  [3649334]
}