package org.money.orderfood.service.impl;

import java.lang.reflect.InvocationTargetException;
import java.time.LocalDateTime;

import org.money.orderfood.dto.RegisterDto;
import org.money.orderfood.dto.ResetPasswordDto;
import org.money.orderfood.mapper.UmsUserMapper;
import org.money.orderfood.pojo.UmsUser;
import org.money.orderfood.service.UmsUserService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.google.common.base.Charsets;
import com.google.common.base.Objects;
import com.google.common.hash.Hashing;

/**
 * @author money
 * @ClassName: UmsUserServiceImpl
 * @Description: TODO
 * @date 2020年11月17日
 */
@Service
public class UmsUserServiceImpl implements UmsUserService {

    @Autowired
    private UmsUserMapper userMapper;

    private UmsUser getUserByUsername(String username) {
        QueryWrapper<UmsUser> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("username", username);
        return userMapper.selectOne(queryWrapper);
    }

    @Override
    public UmsUser login(String username, String password) {
        UmsUser user = getUserByUsername(username);
        String encodePwd = Hashing.sha512().newHasher().putString(user.getPassword(), Charsets.UTF_8).hash().toString();
        if (!Objects.equal(password, encodePwd)) {
            return null;
        }
        user.setPassword("");
        return user;
    }

    @Override
    public UmsUser register(RegisterDto registerDto) {
        UmsUser user = new UmsUser();
        BeanUtils.copyProperties(user, registerDto);
        String encodePwd = Hashing.sha512().newHasher().putString(user.getPassword(), Charsets.UTF_8).hash().toString();
        user.setPassword(encodePwd);
        user.setCreateTime(LocalDateTime.now());
        user.setLastTime(LocalDateTime.now());
        user.setStatus(1);
        userMapper.insert(user);
        user.setPassword("");
        return user;
    }

    @Override
    public UmsUser resetPassword(ResetPasswordDto resetPasswordDto) {
        // TODO Auto-generated method stub
        return null;
    }

}
