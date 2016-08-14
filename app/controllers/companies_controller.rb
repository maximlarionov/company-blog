class CompaniesController < ApplicationController
  respond_to :html

  expose(:company, attributes: :company_params)
  expose(:companies) { Company.page(params[:page]) }

  def create
    flash[:notice] = "Company was successfully created." if company.save
    respond_with(company)
  end

  def update
    flash[:notice] = "Company was successfully updated." if company.save
    respond_with(company)
  end

  def destroy
    company.destroy
    respond_with(company)
  end

  private

  def company_params
    params.require(:company).permit(:name, :subdomain)
  end
end
