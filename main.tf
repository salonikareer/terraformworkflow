resource "newrelic_synthetics_monitor" "monitor" {
  
  status           = "ENABLED"
  name            =  "simple_monitor"
  period           = "EVERY_MINUTE"
  uri              = "https://www.thinkitlearntechnology.com/"
  type             = "SIMPLE"
  locations_public = ["AP_SOUTH_1"]

#   custom_header {
#     name  = "some_name"
#     value = "some_value"
#   }

  treat_redirect_as_failure = true
  validation_string         = "success"
  bypass_head_request       = true
  verify_ssl                = true

  tag {
    key    = "some_key"
    values = ["some_value"]
  }
}






resource "newrelic_synthetics_step_monitor" "monitor" {
  name                                    = "step_monitor"
  enable_screenshot_on_failure_and_script = true
  locations_public                        = ["US_EAST_1", "US_EAST_2"]
  period                                  = "EVERY_6_HOURS"
  status                                  = "ENABLED"
  steps {
    ordinal = 0
    type    = "NAVIGATE"
    values  = ["https://www.thinkitlearntechnology.com"]
  }
  tag {
    key    = "some_key"
    values = ["some_value"]
  }
}








resource "newrelic_synthetics_broken_links_monitor" "monitor" {
  name             = "broken-links-monitor"
  uri              = "https://www.thinkitlearntechnology.com"
  locations_public = ["AP_SOUTH_1"]
  period           = "EVERY_6_HOURS"
  status           = "ENABLED"
  tag {
    key    = "some_key"
    values = ["some_value"]
  }
}
