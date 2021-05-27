package com.ljc.base.dao.admin;

import com.ljc.base.entity.admin.Menu;
import com.ljc.base.entity.admin.OperatorLog;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface MenuDao extends JpaRepository<Menu,Long> {

    /**
     * 根据id查找菜单
     * @param id
     * @return
     */
    @Query("select m from Menu m where m.id = :id")
    Menu find(@Param("id")Long id);

}
