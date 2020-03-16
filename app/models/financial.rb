class Financial < ApplicationRecord
  belongs_to :user
  
  validates :year, presence: true
  validates :name, presence: true, length: { maximum: 50 }
  validates :revenues, presence: true
  validates :grossRevenues, presence: true
  validates :operateRevenues, presence: true
  validates :nonOperateRevenues, presence: true
  validates :incomeTax, presence: true
  validates :income, presence: true
  validates :expense, presence: true
  validates :currentAssets, presence: true
  validates :fixedAssets, presence: true
  validates :totalAssets, presence: true
  validates :currentLiabilites, presence: true
  validates :fixedLiabilites, presence: true
  validates :totalLiabilites, presence: true
  validates :copitalStock, presence: true
  
  
end
