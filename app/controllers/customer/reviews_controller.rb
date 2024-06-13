class Customer::ReviewsController < ApplicationController
  before_action :authenticate_customer!
end
