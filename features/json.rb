MASSA = {
  usuarioValidoCpf: {
    cpf: FFaker::IdentificationBR.cpf,
    email: FFaker::Internet.email,
    telefone: FFaker::PhoneNumberBR.phone_number,
    telefone2: FFaker::PhoneNumberBR.phone_number
  },
  usuarioValidoPj: {
    cnpj: FFaker::IdentificationBR.cnpj,
    email: FFaker::Internet.email,
    telefone: FFaker::PhoneNumberBR.phone_number
  },
  skus: {
    marcas: ['Samsung','iPhone','Lg','Motorola','Lenovo','Nokia']
  }
}
