class SurveysController < ApplicationController
  def index
  end

  def result
  end

  def submit
    [:name,:location,:language,:comment].each {|field| session[field] = params[field]}
    session[:times] = 0 unless session.include?(:times)
    session[:times] += 1
    flash[:success] = "Thanks for submitting this form! You have submitted this form #{session[:times]} times now."
    redirect_to result_url
  end
end
