terraform {
    required_version = "~> 1.3.2"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.33.0"
        }
    }
}

// ~> = lazy constraints
// ~> 1.3.0 = 1.3.0 - 1.3.x
// ~> 4.34.0 = 4.34.0 - 4.34.x
