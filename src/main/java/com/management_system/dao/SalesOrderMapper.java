package com.management_system.dao;

import com.management_system.model.SalesOrder;

public interface SalesOrderMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sales_order
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sales_order
     *
     * @mbggenerated
     */
    int insert(SalesOrder record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sales_order
     *
     * @mbggenerated
     */
    int insertSelective(SalesOrder record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sales_order
     *
     * @mbggenerated
     */
    SalesOrder selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sales_order
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(SalesOrder record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sales_order
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(SalesOrder record);
}