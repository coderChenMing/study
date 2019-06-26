package com.bage.study.mybatis.springboot.org.domain;

import lombok.Data;

import java.util.List;

/**
 * 多对一
 */
@Data
public class Department {

    private long id;
    private String name;

    List<User> users;

}
