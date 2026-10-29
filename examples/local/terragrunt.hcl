include "provider" {
	path = find_in_parent_folders("provider.hcl")
}

terraform {
	source = "../.."
}

locals {
	Eth0SecurityGroupId = "sg-00000000000000000"
	Eth0SubnetId = "subnet-00000000000000000"
}

inputs = {
	Eth0SecurityGroupId = local.Eth0SecurityGroupId
	Eth0SubnetId = local.Eth0SubnetId
}
