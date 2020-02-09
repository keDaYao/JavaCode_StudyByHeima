package com.qingtai.ssm.service.impl;

import com.qingtai.ssm.dao.IPermissionDao;
import com.qingtai.ssm.domain.Permission;
import com.qingtai.ssm.service.IPermissionService;
import com.qingtai.ssm.service.IproductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PermissionServiceImpl implements IPermissionService{

    @Autowired
    private IPermissionDao permissionDao;

    @Override
    public void save(Permission permission) throws Exception{
        permissionDao.save(permission);
    }

    @Override
    public List<Permission> findAll() throws Exception{
        return permissionDao.findAll();
    }
}
