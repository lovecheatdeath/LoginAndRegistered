package com.jnshu.service;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BannerService {

    List ListUpLoad(@Param("status")Integer status);

}
