package com.qingtai.ssm.service;

import com.qingtai.ssm.domain.Role;
import com.qingtai.ssm.domain.UserInfo;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;

public interface IUserService extends UserDetailsService {

    List<UserInfo> findAll() throws Exception;

    public void save(UserInfo userInfo) throws Exception;

    public UserInfo findById(String id) throws Exception;

    List<Role> findOtherRoles(String userId) throws Exception;

    void addRoleToUser(String userId, String[] roleIds);


}
