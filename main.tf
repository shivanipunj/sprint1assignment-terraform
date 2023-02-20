#-------------LOCALFILE---------------------------------------

resource "local_file" "hiii" {
  filename = "file1.txt"
  content  = "yes this is 1st file"
}

resource "local_file" "buiee" {
  filename = "file2.txt"
  content  = "yes this is 2nd file"
}


#----------------random id-------------------------------------

resource "local_file" "heyaafile11" {
  filename = "heyaa.txt"
  content  = random_id.practice.hex

}
resource "random_id" "practice" {
  byte_length = 8

}

#___________________practice_______________________________

resource "local_file" "fileNew" {
  filename = var.practice_map["filename"]
  content  = var.practice_map["content"]
}

locals {
  content_files = "batch"
}

# variable "var_filename " { 
#     type =  string
#     description = "enter filename"
#     //this will act as a print statement.
#     default = "myfile.txt"

# }

#_____________________map_______________________________________

variable "practice_map" {
  type = map(string)
}

#__________________object__________________________________________

resource "local_file" "filenew1" {
  filename = var.var_object["fname"]
  content  = "objectdemo"
}
#_____________________list____________________________________

resource "local_file" "namelistfile" {
  filename = "list.txt"
  content  = var.namelistfile[0]
}
#_____________variavle numbertype______________________________

resource "local_file" "numbertype" {
  filename = "num.txt"
  content  = var.number
}

#______________boolean type____________________________________

resource "local_file" "booleantype" {
  filename = "boolean.txt"
  content  = var.boolean
}