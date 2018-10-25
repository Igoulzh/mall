package com.mall.mapper;

import com.mall.pojo.Deliver;
import com.mall.pojo.DeliverExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DeliverMapper {
    int countByExample(DeliverExample example);

    int deleteByExample(DeliverExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Deliver record);

    int insertSelective(Deliver record);

    List<Deliver> selectByExample(DeliverExample example);

    Deliver selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Deliver record, @Param("example") DeliverExample example);

    int updateByExample(@Param("record") Deliver record, @Param("example") DeliverExample example);

    int updateByPrimaryKeySelective(Deliver record);

    int updateByPrimaryKey(Deliver record);
}