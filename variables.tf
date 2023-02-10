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
