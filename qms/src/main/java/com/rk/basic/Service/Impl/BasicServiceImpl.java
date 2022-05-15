package com.rk.basic.Service.Impl;
import com.rk.basic.Mapper.BasicMapper;
import com.rk.basic.Service.BasicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;


public class BasicServiceImpl<T> implements BasicService<T> {
    @Autowired
    private BasicMapper<T> basicMapper;

    /**
     * 根据id删除1个
     *
     * @param id
     * @return
     */
    @Override
    public boolean removebyid(Integer id) {
        try {
            int i =  basicMapper.removebyid(id);
            if(i>0)
                return true;//删除成功
            else
                return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;//删除失败
        }
    }

    /**
     * 查询当前用户的总记录条数
     * @param clounName
     * @param uname
     * @return
     */
    public Integer countlist(String clounName,String uname) {
        return  basicMapper.countlist(clounName,uname);
    }

    /**
     * 分页查询
     * @param page
     * @param rows
     * @param clounName   查询条件
     * @param uname     用户名称
     * @return
     */
    public List<T> splictlist(Integer page, Integer rows, String clounName,String uname,Integer uid) {
        return (List< T>) basicMapper.splictlist((page-1)*rows,rows,clounName,uname,uid);
    }

    /**
     * 查询t总条数
     *
     * @param clounName
     * @param uid
     */
    @Override
    public Integer countbyuid(String clounName, Integer uid) {
        return basicMapper.countbyuid(clounName,uid);
    }

    /**
     * 查询所有数据
     * @return
     */
    public List<T> findAll(){
        return basicMapper.findAll();
    }


    /**
     * 保存  T
     *
     * @param  t
     * @return
     */
    @Transactional
    public boolean save( T  t) {
        try {
            int i = basicMapper.save(t);
            if(i>0)
                return true;//添加成功
            else
                return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;//添加失败
        }
    }

    /**
     * 修改  T
     *
     * @param  t
     * @return
     */
    @Transactional
    public boolean update(T  t) {
        try {
            int i =  basicMapper.update(t);
            if(i>0)
                return true;//修改成功
            else
                return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;//修改失败
        }
    }

    /**
     * 根据id删除 t
     *
     * @param tids
     * @return
     */
    @Transactional
    public boolean remove(List<Integer> tids) {
        try {
            int i =  basicMapper.remove(tids);
            if(i>0)
                return true;//删除成功
            else
                return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;//删除失败
        }
    }

    /**
     * 根据id查询数据
     *
     * @param id
     * @return
     */
    @Override
    public T findbyid(Integer id) {
        return basicMapper.findbyid(id);
    }
}
