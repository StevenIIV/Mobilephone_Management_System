package com.management_system.dao;

import com.management_system.model.Ck;

public interface CkMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ck
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ck
     *
     * @mbggenerated
     */
    int insert(Ck record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ck
     *
     * @mbggenerated
     */
    int insertSelective(Ck record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ck
     *
     * @mbggenerated
     */
    Ck selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ck
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Ck record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ck
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Ck record);

    int getCkId(String name);
}