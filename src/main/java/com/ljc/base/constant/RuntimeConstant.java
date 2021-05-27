package com.ljc.base.constant;

import java.util.Arrays;
import java.util.List;

/**
 * 系统运行时的常量
 */
public class RuntimeConstant {

    //登录拦截器无需拦截的url
    public static List<String> loginExcludePathPatterns = Arrays.asList(
            "/admin/system/login",
            "/admin/css/**",
            "/admin/fonts/**",
            "/admin/images/**",
            "/admin/js/**",
            "/error",
            "/captcha/**"
    );

    //登录拦截器无需拦截的url
    public static List<String> authorityExcludePathPatterns = Arrays.asList(
            "/admin/system/login",
            "/admin/system/logout",
            "/admin/system/index",
            "/admin/system/update_userinfo",
            "/admin/system/update_pwd",
            "/admin/system/no_right",
            "/admin/css/**",
            "/admin/fonts/**",
            "/admin/images/**",
            "/admin/js/**",
            "/error",
            "/captcha/**",
            "/photo/view"

    );

}
