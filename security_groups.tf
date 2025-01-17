# Security Groups

# Webserver
resource "openstack_compute_secgroup_v2" "webserver" {
  name        = "Webserver: HTTP/HTTPS"
  description = "Allow http/https traffic to WebServer"

  rule {
    from_port   = 80
    to_port     = 80
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }

  rule {
    from_port   = 443
    to_port     = 443
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
}

# External SSH (anywhere -> admin instance)
resource "openstack_compute_secgroup_v2" "SSH_external" {
  name        = "SSH_external"
  description = "Allow SSH from everywhere"

  rule {
    from_port   = 22
    to_port     = 22
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
}

# Internal SSH (admin instance -> internal instances)
resource "openstack_compute_secgroup_v2" "SSH_internal" {
  name        = "SSH_internal"
  description = "Allow SSH from admin instance"

  rule {
    from_port   = 22
    to_port     = 22
    ip_protocol = "tcp"
    cidr        = "192.168.4.2/32"
  }
}

# MySQL / Database
resource "openstack_compute_secgroup_v2" "MySQL" {
  name        = "MySQL"
  description = "Allow traffic to database from Webserver"

  rule {
    from_port   = 3306
    to_port     = 3306
    ip_protocol = "tcp"
    cidr        = "192.168.1.10/32"
  }
}

# Allow connection to NextCloud server 
resource "openstack_compute_secgroup_v2" "NextCloud" {
  name        = "NextCloud"
  description = "Allow tcp access from Wlan Subnet"

  rule {
    from_port   = 443
    to_port     = 443
    ip_protocol = "tcp"
    cidr        = "192.168.10.0/24"
  }
  rule {
    from_port   = 80
    to_port     = 80
    ip_protocol = "tcp"
    cidr        = "192.168.10.0/24"
  }
}