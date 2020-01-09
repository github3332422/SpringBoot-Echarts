package com.demo.service.Impl;

import com.demo.mapper.IndexMapper;
import com.demo.model.Index;
import com.demo.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 张清
 * @date 2019/01/08 下午2:46.
 */
@Service
public class IndexServiceImpl implements IndexService {
    @Autowired
    private IndexMapper indexMapper;

    @Override
    public List<Index> findAll() {
        return indexMapper.findAll();
    }

}
