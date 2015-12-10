class User < ActiveRecord::Base
  attr_accessor :remember_token
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                  #  format: { with: VALID_EMAIL_REGEX },
                   uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true#, length: { minimum: 6 }

  # validates :address, :date_of_birth, :spouse_name, :spouse_dob, :spouse_address,
  #           :spouse_email, presence: true

  validates_presence_of :address, :date_of_birth, :spouse_name, :spouse_dob,
                        :spouse_address, :spouse_email
  has_one :profile

  attr_writer :current_step

  # Returns the hash digest of the given string.
  def self.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  # Returns a random token.
  def self.new_token
    SecureRandom.urlsafe_base64
  end

  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  # Returns true if the given token matches the digest.
  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

  # Forgets a user.
  def forget
    update_attribute(:remember_digest, nil)
  end

  #check if at least 3 true to qualify
  def qualified?
    answers = []
    self.attribute_names.each do |f|
      answers << f if self[f] == true && self.column_for_attribute(f).type == :boolean
    end
    answers.length >= 3 ? true : false
  end

  def current_step
    @current_step || steps.first
  end

  def steps
    %w[qualify spouse_info sign_in]
  end

  def next_step
    self.current_step = steps[steps.index(current_step)+1]
  end

  def previous_step
    self.current_step = steps[steps.index(current_step)-1]
  end
  def first_step?
    current_step == steps.first
  end

  def last_step?
    current_step == steps.last
  end
end
