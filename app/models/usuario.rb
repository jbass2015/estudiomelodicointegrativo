class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         # Confirmamos el email y validamos que no sean vacios con presence
         # mostramos el mensaje de error con message
         validates :email , presence: true , confirmation: true
         validates :email_confirmation, presence: { message: " es requerido"}

         # Validamos en una expresion regular nuestro email
         VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
         validates :email, format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }

         # Validamos que el identificador tenga entre 8 a 12 caracteres
         validates :identificador, length: { in: 8..12 , message: "debe tener entre 8 y 12 caracteres"}

         # Validamos que el identificador solo sea numerico
         validates :identificador, numericality: { only_integer: true }

         # Validamos que el email sea unico
         validates :email, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}       
end
