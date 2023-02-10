variable "nombreDeEC2" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "NewEC2UsingTerraformVariable"
  validation{
    condition = length(var.nombreDeEC2) > 4
    error_message = "The string must be more than 4 characteres" 
  }

}

#Bases types:
#1. string, 2. number, 3.bool
#Complext types
# list, set, map, object, tuple

variable "availability_zone_names" {
  type = list(string)
  default = ["us-east-1"]
}

variable "docker_ports" {
  type = list(object({ #its define the type of variable
    internal = number
    extermal = number
    protocol = string
  }))
  default = [#its define the default value of these
    {
      internal = 8300
      external = 8300
      protocol = "tcp"
    }
  ]

}
