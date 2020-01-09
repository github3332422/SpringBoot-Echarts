package com.demo.mapper;

import com.demo.model.Index;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @author 张清
 * @date 2019/01/08 下午2:45.
 */
@Mapper
public interface IndexMapper {

    List<Index> findAll();
}
