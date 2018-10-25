package com.mall.mapper;

import com.mall.pojo.Shippingaddress;
import com.mall.pojo.ShippingaddressExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ShippingaddressMapper {
    int countByExample(ShippingaddressExample example);

    int deleteByExample(ShippingaddressExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Shippingaddress record);

    int insertSelective(Shippingaddress record);

    List<Shippingaddress> selectByExample(ShippingaddressExample example);

    Shippingaddress selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Shippingaddress record, @Param("example") ShippingaddressExample example);

    int updateByExample(@Param("record") Shippingaddress record, @Param("example") ShippingaddressExample example);

    int updateByPrimaryKeySelective(Shippingaddress record);

    int updateByPrimaryKey(Shippingaddress record);
}