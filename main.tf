provider "openstack" {
  auth_url    = "http://8.43.86.2:5000/v2.0"
}

resource "openstack_compute_instance_v2" "mason" {
  name              = "mason"
  availability_zone = "nova"
  image_name        = "Ubuntu16.04"
  flavor_name       = "m1.tiny"
  security_groups   = ["default"]
}
