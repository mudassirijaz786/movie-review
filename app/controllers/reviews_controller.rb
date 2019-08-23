class ReviewsController < ApplicationController
  def index
    @movies = scope
  end

  def show
    @movies = scope.find(params[:id])

    respond_to do |format|
        format.html
        format.pdf do
            render pdf: "Invoice No. #{@movies.id}",
            page_size: 'A4',
            template: "invoices/show.html.erb",
            layout: "pdf.html",
            orientation: "Landscape",
            lowquality: true,
            zoom: 1,
            dpi: 75
        end
    end
  end

  private
        def scope
            ::Invoice.all.includes(:invoice_items)
        end
end
