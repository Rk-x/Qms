package com.rk.basic.Mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

public interface BasicMapper<T> {
    /**
     * 分页查询当前页的所有数据
     * @return
     */
    List<T> splictlist(@Param("page") Integer page,
                       @Param("size") Integer size,
                       @Param("name") String name,
                       @Param("uname")String uname,
                       @Param("uid")Integer uid);


    /**
     * 查询t总条数   根据列名和用户名
     */
    Integer countlist(@Param("name")String name,
                      @Param("uname")String uname);


    /**
     * 查询t总条数
     */
    Integer countbyuid(@Param("clounName")String clounName,
                      @Param("uid")Integer uid);

    /**
     * 查询所有数据
     * @return
     */
    List<T> findAll();

    /**
     * 添加 t
     * @param t
     * @return
     */
    int save(T t);


    /**
     * 修改 t
     * @param t
     * @return
     */
    int update(T t);

    /**
     * 根据id删除  t
     * @param ids
     * @return
     */
    int remove(List<Integer> ids);

    /**
     * 根据id删除1个
     * @param id
     * @return
     */
    int removebyid(Integer id);


    /**
     * 根据id查询数据
     * @param id
     * @return
     */
    T findbyid(Integer id);
}
