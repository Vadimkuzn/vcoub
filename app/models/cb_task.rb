class CbTask < ActiveRecord::Base

 create_table "cb_tasks", force: :cascade do |t|
  t.integer   "user_id",       null:    false               # ��� �������� �������. �� ������ ����� ����� �� ��� ����
  t.string    "title",         limit:   255                 # �������� �������, ��������������, ������ ��� �����
  t.string    "type",          limit:   255, null: false    # ��� �������(������ ��� ����� ������ 1 ���: CbLikeTask - �������� ������ � ������)
  t.string    "url",           limit:   255, null: false    # �����, ���� ����� ������������� �����. ��������: https://coub.com/view/bfrkm
  t.integer   "cost",          null:    false               # ��������� � ������ �� ���� ���������� �������.
  t.string    "item_id",       limit:   255, null: false    # ���������� ������������� ������ �� ����� coub. �� ���������� id
  t.string    "shortcode",     limit:   255                 # �������� ��� ������, ��� ������ https://coub.com/view/bfrkm ��� ����� bfrkm
  t.boolean   "deleted",       default: false, null: false  # ������� ������� ��� ���
  t.boolean   "paused",        default: false, null: false  # ������� �� ����� ��� ���(���� ����� ��� ������� � ������� � �����)
  t.boolean   "suspended",     default: false, null: false  # ������� ���������� ��� ���
  t.boolean   "verified",      default: false, null: false  # �� �������
  t.integer   "current_count", null:    false               # ���������� ������ �� ������� ��������
  t.integer   "max_count",     null:    false               #
  t.integer   "members_count", null:    false               #
  t.string    "picture_path",  limit:   255                 # url ��������, ������� ����� ������������ ��� ���������� �������
  t.boolean   "finished",      default: false, null: false  # ������� ���������(���������) ��� ���
  t.datetime  "created_at",    null:    false
  t.datetime  "updated_at",    null:    false
 end

end
