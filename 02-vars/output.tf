# Declaring an empty variable
# variable "sample" {} 

# Declaring a variable with a default value
variable "batch" {
    default = "batch56"
}

# Printing a variable with outputs
output "batch-op" {
    value = var.batch
}

# When enclose a variable in Quotes and when to use $ notation for a variable ???
# Whenever your variable is enclosed in a set of strings or in between a sentence, then we to enslose them in strings and with bash notation.

output "batch_number" {
    value = "Currrent Batch is ${var.batch}"
}

variable "numerival" {
    default = 100
}

output "numerical_op" {
    value = var.numerival
}

# Declaring a list variable !!!!  A Key with multiple values is referred as List. 

variable "example_list" {
    default = [
        "DevOps" ,   
        "AWS_Cloud", 
        false,       
        "Manoj",     
        56           
    ]
}

# Printing a List Variable
output "example_list_op" {
    value = "Welcome To ${var.example_list[0]} with ${var.example_list[1]} Training and this our batch ${var.example_list[4]} and training ${var.example_list[3]}"
}