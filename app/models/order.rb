class Order < ActiveRecord::Base
  include Statesman::Adapters::ActiveRecordQueries

  belongs_to :shipping_type
  has_many :line_items
  has_one :address, :dependent => :destroy
  has_many :transitions, class_name: "OrderTransition", autosave: false

  accepts_nested_attributes_for :address

  validates :shipping_type, presence: true, allow_nil: true

  delegate :can_transition_to?, :transition_to!, :transition_to, :current_state,
           to: :state_machine

  def state_machine
    @state_machine ||= OrderStateMachine.new(self, transition_class: OrderTransition,
                                             association_name: :transitions)
  end

  def full_cost
    line_items.map { |e| e.full_price }.sum + shipping_cost
  end

  def self.transition_class
    OrderTransition
  end

  def self.initial_state
    OrderStateMachine.initial_state
  end

  def self.transition_name
    :transitions
  end
end
