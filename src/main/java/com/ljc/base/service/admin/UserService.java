package com.ljc.base.service.admin;

import com.ljc.base.bean.PageBean;
import com.ljc.base.dao.admin.UserDao;
import com.ljc.base.entity.admin.Role;
import com.ljc.base.entity.admin.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserDao userDao;

    /**
     * 用户编辑/添加操作
     * @param user
     * @return
     */
    public User save(User user){
        return userDao.save(user);
    }

    public User findByUsername(String username){
        return userDao.findByUsername(username);
    }

    /**
     * 分页查询用户列表
     * @param user
     * @param pageBean
     * @return
     */
    public PageBean<User> findByName(User user, PageBean<User> pageBean){
        ExampleMatcher withMatcher = ExampleMatcher.matching().withMatcher("username", ExampleMatcher.GenericPropertyMatchers.contains());
        withMatcher = withMatcher.withIgnorePaths("status","gander");
        Example<User> example = Example.of(user, withMatcher);
        Pageable pageable = PageRequest.of(pageBean.getCurrentPage()-1, pageBean.getPageSize());
        Page<User> findAll = userDao.findAll(example, pageable);
        pageBean.setContent(findAll.getContent());
        pageBean.setTotal(findAll.getTotalElements());
        pageBean.setTotalPage(findAll.getTotalPages());
        return pageBean;
    }

    /**
     * 根据id查询用户
     * @param id
     * @return
     */
    public User find(Long id){
        return userDao.find(id);
    }


    public boolean isExistUsername(String username,Long id){
        User user = userDao.findByUsername(username);
        if (user!=null){
            //表示用户名存在，接下来判断是否是自己本身
            if (user.getId().longValue()!=id.longValue()){
                return true;
            }
        }
        return false;
    }

    public void deleteById(Long id){
        userDao.deleteById(id);
    }


    /**
     * 返回用户总数
     * @return
     */
    public Long total(){
        return userDao.count();
    }

}
