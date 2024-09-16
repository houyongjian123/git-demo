-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('guanli', '2166', '1', 'cxuzaixian', 'system/cxuzaixian/index', 1, 0, 'C', '0', '0', 'system:cxuzaixian:list', '#', 'admin', sysdate(), '', null, 'guanli菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('guanli查询', @parentId, '1',  '#', '', 1, 0, 'F', '0', '0', 'system:cxuzaixian:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('guanli新增', @parentId, '2',  '#', '', 1, 0, 'F', '0', '0', 'system:cxuzaixian:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('guanli修改', @parentId, '3',  '#', '', 1, 0, 'F', '0', '0', 'system:cxuzaixian:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('guanli删除', @parentId, '4',  '#', '', 1, 0, 'F', '0', '0', 'system:cxuzaixian:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('guanli导出', @parentId, '5',  '#', '', 1, 0, 'F', '0', '0', 'system:cxuzaixian:export',       '#', 'admin', sysdate(), '', null, '');