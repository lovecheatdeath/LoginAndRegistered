package com.jnshu.service.serviceImpl;

import com.jnshu.mapper.BannerMapper;
import com.jnshu.service.BannerService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BannerServiceImpl implements BannerService {

    @Autowired
    BannerMapper bannerMapper;

    @Override
    public List ListUpLoad(@Param("status")Integer status){
        return bannerMapper.upLoadBanner(status);
    }


}
