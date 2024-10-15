variable length {
  type = number
  default = 1
  
  validation {
    condition     = var.length > 0
    error_message = "length must be greater than 0"
  }
}

resource random_pet cat {
  length = var.length
}

resource random_pet dog {
  length = var.length
}

resource random_pet fish {
  length = var.length
}

resource random_pet bird {
  length = var.length
}

resource random_pet worm {
  length = var.length
}

output cat {
  value = random_pet.cat.id
}

output dog {
  value = random_pet.dog.id
}

output fish {
  value = random_pet.fish.id
}

output bird {
  value = random_pet.bird.id
}

output worm {
  value = random_pet.worm.id
}

