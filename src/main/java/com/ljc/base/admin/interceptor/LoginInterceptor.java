package com.ljc.base.admin.interceptor;

import com.alibaba.fastjson.JSON;
import com.ljc.base.bean.CodeMsg;
import com.ljc.base.constant.SessionConstant;
import com.ljc.base.entity.admin.Menu;
import com.ljc.base.entity.admin.User;
import com.ljc.base.util.MenuUtil;
import com.ljc.base.util.StringUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;


/**
 * 登录拦截器
 */
@Component
public class LoginInterceptor implements HandlerInterceptor {

    private Logger log = LoggerFactory.getLogger(LoginInterceptor.class);

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        String requestURI = request.getRequestURI();
        log.info("进入登录拦截器,当前URI==>"+requestURI);
        HttpSession session = request.getSession();
        Object object = session.getAttribute(SessionConstant.SESSION_USER_LOGIN_KEY);
        if (object==null){
            //首先判断是否是ajax请求
            if (StringUtil.isAjax(request)){
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(JSON.toJSONString(CodeMsg.USER_SESSION_EXPIRED));
                return false;
            }
            log.info("用户未登录或session已失效,重定向到登录页面,当前URI==>"+requestURI);
            //说明是普通请求可直接重定向到登录页面
            //用户未登录或session已失效,重定向到登录页面
            response.sendRedirect("/admin/system/login");
            return false;
        }
        if (!StringUtil.isAjax(request)){
            //若不是ajax请求则将菜单放入页面模板变量
            User user = (User) object;
            List<Menu> authorities = user.getRole().getAuthorities();
            request.setAttribute("userTopMenus", MenuUtil.getTopMenus(authorities));
            List<Menu> secondMenus = MenuUtil.getSecondMenus(authorities);
            request.setAttribute("userSecondMenus", secondMenus);
            //List<Menu> thirdMenus = MenuUtil.getThirdMenus(authorities);
            //request.setAttribute("thirdMenus", thirdMenus);
            request.setAttribute("userThirdMenus",MenuUtil.getChildren(MenuUtil.getMenuIdByUrl(requestURI,secondMenus),authorities));
        }
        log.info("该请求符合登录要求，登录拦截器放行，放行地址为==>"+requestURI);
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }

}
