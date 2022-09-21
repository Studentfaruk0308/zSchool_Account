class TuitionfeesController < ApplicationController

	def index
		@tuitionfees = Tuitionfee.all
	end

    def new
        @tuitionfee = Tuitionfee.new
    end
  
    def create
        @tuitionfee = Tuitionfee.create(tuitionfee_params)
        redirect_to tuitionfee_path(@tuitionfee)
    end
  
    def show
        @tuitionfee = Tuitionfee.find(params[:id])
    end
  
     
    def edit
        @tuitionfee = Tuitionfee.find(params[:id])
    end
  
    def update
        @tuitionfee = Tuitionfee.find(params[:id])
        @tuitionfee.update(tuitionfee_params)
        redirect_to tuitionfee_path(@tuitionfee_class)
    end
  
    private
  
    def tuitionfee_params
        params.require(:tuitionfee).permit(:tuitionfee_code, :term_1_fee, :term_2_fee, :term_3_fee, :term_4_fee, :full_year_fee)
    end
end
