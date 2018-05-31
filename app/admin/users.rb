ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  # 一覧ページ
  index do
    column :id
    column :role
    column :email
    column :name
    column :prefecture # 勝手に prefecture.name を表示
    column :address
    column :deleted_at

    actions 
  end

  # 詳細ページ
  show do
    attributes_table do
      row :id
      row :role
      row :email
      row :name
      row :prefecture # 勝手に prefecture.name を表示
      row :address
      row :deleted_at
    end
  end

  # 新規作成/編集ページ
  form do |f|
    inputs  do
      input :role
      input :email
      input :name
      input :prefecture
      input :address
    end

    actions
  end

  permit_params :role, :email, :name, :prefecture, :address # 更新可能な attribute を記載
end

