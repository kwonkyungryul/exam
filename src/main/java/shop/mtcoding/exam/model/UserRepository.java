package shop.mtcoding.exam.model;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserRepository {
    public int insert(@Param("username") String username, @Param("password") String password, @Param("email") String email);

    public User findByUsernameAndPwd(@Param("username") String username, @Param("password") String password);

    public User findById(int id);

    public int updateById(@Param("id") int id, @Param("username") String username, @Param("password") String password, @Param("email") String email);
}
