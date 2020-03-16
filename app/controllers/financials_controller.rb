class FinancialsController < ApplicationController
  before_action :require_user_logged_in
  
  def index
    @financials = current_user.financials
  end
  
  def show
    @financial = Financial.find(params[:id])
  end
  
  def new
    @financial = current_user.financials.build
  end
  
  def create
    @financial = current_user.financials.build(finance_params)
    
    if @financial.save
      flash[:success] = '財務諸表を登録しました。'
      redirect_to financials_path
    else
      flash.now[:danger] = '全てのフォームに入力してください。'
      render :new
    end
  end
  
  def edit
    @financial = Financial.find(params[:id])
  end
  
  def update
    @financial = Financial.find(params[:id])
    if @financial.update(finance_params)
      flash[:success] = '更新されました。'
      redirect_to @financial
    else
      flash[:danger] = '全てのフォームに入力してください。'
      render :edit
    end
  end
  
  def destroy
    @financial = Financial.find(params[:id])
    @financial.destroy
    
    flash[:success] = "削除しました。"
    redirect_to financials_url
  end

  private
    def finance_params
      params.require(:financial).permit(:year,:revenues,:grossRevenues,:operateRevenues,:nonOperateRevenues,:incomeTax,:income,:expense,:currentAssets ,:fixedAssets ,:totalAssets ,:currentLiabilites ,:fixedLiabilites ,:totalLiabilites ,:copitalStock, :name)
    end
  
  
end
