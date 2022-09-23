<?php

namespace App\Helpers;

use Illuminate\Support\Facades\Auth;

use App\Models\MenuAction;
use App\Models\RolePrivileges;
use Illuminate\Support\Facades\Request;

class eKreative
{
    public static function myId()
    {
        return Auth::user()->id;
    }

    public static function myName()
    {
        return Auth::user()->name;
    }

    public static function myRoleId()
    {
        return Auth::user()->role->id;
    }

    public static function myRoleName()
    {
        return Auth::user()->role->name;
    }

    public static function myRolePrivileges()
    {
        return Auth::user()->role->rolePrivileges;
    }

    public static function isSuperAdmin()
    {
        if (self::myRoleName() == "Super Admin") {
            return true;
        }

        return false;
    }

    public static function getModulePath()
    {
        return Request::path();
    }

    public static function getModuleUrl($menuActionId = null, $actionName = null)
    {
        return MenuAction::join('menus', 'menu_actions.menuId', '=', 'menus.id')
            ->join('actions', 'menu_actions.actionId', '=', 'actions.id')
            ->where([
                ['menu_actions.id', $menuActionId],
                ['actions.name', $actionName]
            ])
            ->select('menus.url')
            ->first();
    }

    public static function isView()
    {
        if (self::isSuperAdmin()) {
            return true;
        }

        $roles = self::myRolePrivileges();
        foreach ($roles as $role) {
            $data = self::getModuleUrl($role->menuActionId, 'View');
            if ($data) {
                if ($data->url == self::getModulePath()) {
                    return true;
                }
            }
        }

        return false;
    }

    public static function isCreate()
    {
        if (self::isSuperAdmin()) {
            return true;
        }

        $roles = self::myRolePrivileges();
        foreach ($roles as $role) {
            $data = self::getModuleUrl($role->menuActionId, 'Create');
            if ($data) {
                if ($data->url == self::getModulePath()) {
                    return true;
                }
            }
        }

        return false;
    }

    public static function isRead()
    {
        if (self::isSuperAdmin()) {
            return true;
        }

        $roles = self::myRolePrivileges();
        foreach ($roles as $role) {
            $data = self::getModuleUrl($role->menuActionId, 'Read');
            if ($data) {
                if ($data->url == self::getModulePath()) {
                    return true;
                }
            }
        }
    }

    public static function isUpdate()
    {
        if (self::isSuperAdmin()) {
            return true;
        }

        $roles = self::myRolePrivileges();
        foreach ($roles as $role) {
            $data = self::getModuleUrl($role->menuActionId, 'Update');
            if ($data) {
                if ($data->url == self::getModulePath()) {
                    return true;
                }
            }
        }
    }

    public static function isDelete()
    {
        if (self::isSuperAdmin()) {
            return true;
        }

        $roles = self::myRolePrivileges();
        foreach ($roles as $role) {
            $data = self::getModuleUrl($role->menuActionId, 'Delete');
            if ($data) {
                if ($data->url == self::getModulePath()) {
                    return true;
                }
            }
        }
    }

    public static function getMenuAction($menuId = null, $actionId = null)
    {
        return MenuAction::where([['menuId', $menuId], ['actionId', $actionId]])->first();
    }

    public static function getRolePrivileges($roleId = null, $menuActionId = null)
    {
        return RolePrivileges::where([['roleId', $roleId], ['menuActionId', $menuActionId]])->first();
    }

    public static function sidebarMenu()
    {
        // $menus = RolePrivileges::join('menu_actions', 'role_privileges.menuActionId', '=', 'menu_actions.id')
        $menus = MenuAction::join('menus', 'menu_actions.menuId', '=', 'menus.id')
            ->join('actions', 'menu_actions.actionId', '=', 'actions.id')
            ->when(self::myRoleName() != 'Super Admin', function ($query) {
                $query->whereRaw("menu_actions.id IN (SELECT menuActionId from role_privileges where roleId = '" . self::myRoleId() . "')");
            })
            ->where([
                ['menus.parentId', '0'],
                ['actions.name', 'View']
            ])
            ->whereNull('menus.deletedAt')
            ->select('menus.*')
            // ->orderBy('menus.noOder','ASC')
            ->get();

        foreach ($menus as $menu) {
            // $child = RolePrivileges::join('menu_actions', 'role_privileges.menuActionId', '=', 'menu_actions.id')
            $child = MenuAction::join('menus', 'menu_actions.menuId', '=', 'menus.id')
                ->join('actions', 'menu_actions.actionId', '=', 'actions.id')
                ->when(self::myRoleName() != 'Super Admin', function ($query) {
                    $query->whereRaw("menu_actions.id IN (SELECT menuActionId from role_privileges where roleId = '" . self::myRoleId() . "')");
                })
                ->where([
                    ['menus.parentId', $menu->id],
                    ['actions.name', 'View']
                ])
                ->whereNull('menus.deletedAt')
                ->select('menus.*')
                ->get();

            if (count($child)) {
                $menu->children = $child;
            }
        }

        return $menus;
    }

    // public static function featherIcon($name = null, $print = false)
    // {
    //     $icons = new \Feather\Icons();

    //     return $icons->get($name, ['width' => 18, 'height' => 18], $print);
    // }
}
