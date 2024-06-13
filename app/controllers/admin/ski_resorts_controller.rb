class Admin::SkiResortsController < ApplicationController
  before_action :authenticate_admin!
end
