package com.jnshu.mapper;

import junit.framework.TestCase;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/applicationContext-*.xml")
public class ProfessionMapperTest extends TestCase {
    @Autowired
    ProfessionMapper professionMapper;


@Test
    public void select(){
    System.out.println(professionMapper.distinctType(1));
}

}