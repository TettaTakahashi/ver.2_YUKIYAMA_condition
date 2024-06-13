class Customer::SkiResortsController < ApplicationController
  before_action :authenticate_customer!, only: [:show, :search]
end
