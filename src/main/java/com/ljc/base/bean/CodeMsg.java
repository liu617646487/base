package com.ljc.base.bean;

import com.sun.org.apache.bcel.internal.generic.NEW;

/**
 * 错误码统一处理类，所有的错误码统一定义在在这里
 */


public class CodeMsg {


    private int code;//错误码

    private String msg;//错误信息

    /**
     * 构造函数私有化，即单例模式
     * @param code
     * @param msg
     */
    private CodeMsg(int code,String msg){
        this.code=code;
        this.msg=msg;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }


    /**
     * 通用错误码定义
     */
    //处理成功消息码
    public static CodeMsg SUCCESS = new CodeMsg(0,"success");
    //非法数据错误码
    public static CodeMsg DATA_ERROR = new CodeMsg(-1,"非法数据!");

    public static CodeMsg CAPTCHA_EMPTY = new CodeMsg(-2,"验证码不能为空!");
    public static CodeMsg VALIDATE_ENTITY_ERROR = new CodeMsg(-3,"");
    public static CodeMsg SESSION_EXPIRED = new CodeMsg(-4,"会话已失效，请刷新后重试！");
    public static CodeMsg CAPTCHA_ERROR = new CodeMsg(-5,"验证码错误!");
    public static CodeMsg USER_SESSION_EXPIRED = new CodeMsg(-6,"用户未登录或会话已失效，请重新登录！");
    public static CodeMsg UPLOAD_PHOTO_SUFFIX_ERROR = new CodeMsg(-7,"图片格式不正确！");
    public static CodeMsg UPLOAD_PHOTO_ERROR = new CodeMsg(-8,"");



    /**
     * 后台管理类错误码
     */
    //用户管理类错误
    public static CodeMsg ADMIN_USERNAME_EMPTY = new CodeMsg(-2000,"用户名不能为空!");
    public static CodeMsg ADMIN_PASSWORD_EMPTY = new CodeMsg(-2001,"密码不能为空!");
    public static CodeMsg ADMIN_NO_RIGHT = new CodeMsg(-2002,"您所属的用户角色没有该权限!");
    public static CodeMsg ADMIN_OLDPWD_ERROR = new CodeMsg(-2003,"旧密码错误!");
    public static CodeMsg ADMIN_CONFIRMPWD_ERROR = new CodeMsg(-2004,"确认密码错误!");

    /**
     * 登录类错误码
     */
    public static CodeMsg ADMIN_USERNAME_NO_EXIST = new CodeMsg(-3000,"用户名不存在!");
    public static CodeMsg ADMIN_PASSWORD_ERROR = new CodeMsg(-3001,"密码错误!");
    public static CodeMsg ADMIN_USER_UNABLE = new CodeMsg(-3002,"无法登陆，用户已被冻结，请联系管理员!");
    public static CodeMsg ADMIN_USER_ROLE_UNABLE = new CodeMsg(-3003,"无法登陆，用户所属角色已被冻结，请联系管理员!");
    public static CodeMsg ADMIN_USER_ROLE_AUTHORITIES_EMPTY = new CodeMsg(-3004,"无法登陆，用户所属角色无可用权限，请联系管理员!");



    /**
     * 后台菜单管理类错误码
     */
    public static CodeMsg ADMIN_MENU_ADD_ERROR = new CodeMsg(-4000,"菜单添加失败，请联系管理员!");
    public static CodeMsg ADMIN_MENU_EDIT_ERROR = new CodeMsg(-4001,"菜单编辑失败，请联系管理员!");
    public static CodeMsg ADMIN_MENU_ID_EMPTY = new CodeMsg(-4002,"菜单ID不能为空!");
    public static CodeMsg ADMIN_MENU_ID_ERROR = new CodeMsg(-4003,"菜单ID错误!");
    public static CodeMsg ADMIN_MENU_DELETE_ERROR = new CodeMsg(-4004,"该菜单下有子菜单，不能删除该菜单，请删除子菜单后删除该菜单!");

    /**
     * 后台角色管理类错误码
     */
    public static CodeMsg ADMIN_ROLE_ADD_ERROR = new CodeMsg(-5000,"角色添加失败，请联系管理员!");
    public static CodeMsg ADMIN_ROLE_EDIT_ERROR = new CodeMsg(-5001,"角色编辑失败，请联系管理员!");
    public static CodeMsg ADMIN_ROLE_ID_EMPTY = new CodeMsg(-5002,"角色ID不能为空!");
    public static CodeMsg ADMIN_ROLE_ID_ERROR = new CodeMsg(-5003,"角色ID错误!");
    public static CodeMsg ADMIN_ROLE_DELETE_ERROR = new CodeMsg(-5004,"该角色下有用户，不能删除该角色，请删除角色下的用户后再删除角色!");

    /**
     * 后台用户管理类错误码
     */
    public static CodeMsg ADMIN_USER_ADD_ERROR = new CodeMsg(-6000,"用户添加失败，请联系管理员!");
    public static CodeMsg ADMIN_USER_ROLE_EMPTY = new CodeMsg(-6001,"用户添加失败，请为用户添加角色!");
    public static CodeMsg ADMIN_USER_USERNAME_EXIST = new CodeMsg(-6002,"用户添加失败，该用户名已存在!");
    public static CodeMsg ADMIN_USER_NO_EMPTY = new CodeMsg(-6003,"用户编辑失败，用户不存在!");
    public static CodeMsg ADMIN_USER_EDIT_ERROR = new CodeMsg(-6004,"用户编辑失败，请联系管理员!");
    public static CodeMsg ADMIN_USER_DELETE_ERROR = new CodeMsg(-6005,"用户删除失败，该用户存在关联数据，不可删除!");
    public static CodeMsg ADMIN_USER_ID_ERROR = new CodeMsg(-6006,"用户ID错误!");




    //数据库备份管理类错误码
    public static CodeMsg ADMIN_DATABASE_BACKUP_NO_EXIST= new CodeMsg(-8000,"数据路备份记录不存在!");


}
