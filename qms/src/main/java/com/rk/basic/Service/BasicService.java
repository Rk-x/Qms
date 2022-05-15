package com.rk.basic.Service;
import java.util.List;

public interface BasicService<T> {

    /**
     * 根据id删除1个
     * @param id
     * @return
     */
    boolean removebyid(Integer id);

    /**
     * 查询当前用户总记录数
     * @param clounName
     * @param uname
     * @return
     */
    Integer countlist(String clounName,String uname);

    /**
     * 分页查询
     * @param page
     * @param size
     * @param clounName   查询条件
     * @param uname     用户名称
     * @return
     */
    List<T> splictlist(Integer page,
                       Integer size,
                       String clounName,
                       String uname,
                       Integer uid);


    /**
     * 查询t总条数
     */
    Integer countbyuid(String clounName,
                       Integer uid);


    /**
     * 查询所有数据
     * @return
     */
    List<T> findAll();



    /**
     * 保存 T
     * @param t
     * @return
     */
    boolean  save(T t);


    /**
     * 修改 T
     * @param t
     * @return
     */
    boolean update(T t);


    /**
     * 根据id删除t
     * @param tids
     * @return
     */
    boolean remove(List<Integer> tids);

    /**
     * 根据id查询数据
     * @param id
     * @return
     */
    T findbyid(Integer id);
}
