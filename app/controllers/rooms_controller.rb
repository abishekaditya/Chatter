class RoomsController < ApplicationController

  http_basic_authenticate_with name: "admin", password: "foobar" ,except: [:show]
  def show
    @messages= Message.all
  end

  def delete
    reset_session
    Message.delete_all
    redirect_to :back
  end
end
