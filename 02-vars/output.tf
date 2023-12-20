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