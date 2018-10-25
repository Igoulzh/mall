package com.mall.mapper;

import com.mall.pojo.Shoppingtrolley;
import com.mall.pojo.ShoppingtrolleyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ShoppingtrolleyMapper {
    int countByExample(ShoppingtrolleyExample example);

    int deleteByExample(ShoppingtrolleyExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Shoppingtrolley record);

    int insertSelective(Shoppingtrolley record);

    List<Shoppingtrolley> selectByExample(ShoppingtrolleyExample example);

    Shoppingtrolley selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Shoppingtrolley record, @Param("example") ShoppingtrolleyExample example);

    int updateByExample(@Param("record") Shoppingtrolley record, @Param("example") ShoppingtrolleyExample example);

    int updateByPrimaryKeySelective(Shoppingtrolley record);

    int updateByPrimaryKey(Shoppingtrolley record);
}