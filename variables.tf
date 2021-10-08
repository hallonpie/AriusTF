## VARIABLES
# router id
variable "router_id" {
  type    = string
  default = "600b8501-78cb-4155-9c9f-23dfcba88828"
}

# Networks
variable "network_name_dmz" {
  type    = string
  default = "DMZ-network"
}

variable "network_name_media" {
  type    = string
  default = "Media-network"
}

variable "network_name_hosting" {
  type    = string
  default = "Hosting-network"
}

variable "network_name_department" {
  type    = string
  default = "Department-network"
}

variable "network_name_wlan" {
  type    = string
  default = "WLAN-network"
}

#  DNS
variable "dns_ip" {
  type    = list(string)
  default = ["8.8.8.8", "8.8.4.4"]
}

# Subnets
variable "subnet_name_dmz" {
  type    = string
  default = "DMZ-subnet"
}
variable "subnet_cidr_dmz" {
  type    = string
  default = "192.168.1.0/24"
}

variable "subnet_name_media" {
  type    = string
  default = "Media-subnet"
}
variable "subnet_cidr_media" {
  type    = string
  default = "192.168.2.0/24"
}

variable "subnet_name_hosting" {
  type    = string
  default = "Hosting-subnet"
}
variable "subnet_cidr_hosting" {
  type    = string
  default = "192.168.3.0/24"
}

variable "subnet_name_departments" {
  type    = string
  default = "Departments-subnet"
}
variable "subnet_cidr_departments" {
  type    = string
  default = "192.168.4.0/24"
}

variable "subnet_name_wlan_media" {
  type    = string
  default = "Wlan_subnet_media"
}
variable "subnet_cidr_wlan_media" {
  type    = string
  default = "192.168.10.0/27"
}

variable "subnet_name_wlan_hosting" {
  type    = string
  default = "Wlan_subnet_hosting"
}
variable "subnet_cidr_wlan_hosting" {
  type    = string
  default = "192.168.10.32/27"
}

variable "subnet_name_wlan_department" {
  type    = string
  default = "Wlan_subnet_department"
}
variable "subnet_cidr_wlan_department" {
  type    = string
  default = "192.168.10.64/27"
}
