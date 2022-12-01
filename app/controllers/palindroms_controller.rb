class PalindromsController < ApplicationController
  def index
    @palindroms = Palindrom.order(created_at: :desc)
    @palindrom = Palindrom.last
  end
  def create
    @palindrom = Palindrom.new(palindrom_params)

    respond_to do |format|
      if @palindrom.save
        format.turbo_stream
        format.html { redirect_to palindroms_url, notice: 'Success' }
      else
        format.html { render :new, status: 403 }
      end
    end
  end
  def new
    @palindrom = Palindrom.new
  end

  private

  def palindrom_params
    params.require(:palindrom).permit(:value)      #params[:value]
  end
end
