package org.money.orderfood.service.impl;

import org.money.orderfood.dto.ResetPasswordDto;
import org.money.orderfood.dto.UpdateAdminDto;
import org.money.orderfood.mbg.entity.UmsAdmin;
import org.money.orderfood.mbg.mapper.UmsAdminMapper;
import org.money.orderfood.service.UmsAdminService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;

@Service
public class UmsAdminServiceImpl implements UmsAdminService {
	
	@Autowired
	private UmsAdminMapper umsAdminMapper;
	
	private UmsAdmin getUmsAdminByUserName(String username) {
		QueryWrapper<UmsAdmin> wrapper = new QueryWrapper();
		wrapper.eq("username", username);
		return umsAdminMapper.selectOne(wrapper);
	}

	@Override
	public UmsAdmin getAdminInfoById(Integer id) {
		UmsAdmin umsAdmin = umsAdminMapper.selectById(id);
		umsAdmin.setPassword(null);
		return umsAdmin;
	}

	@Override
	public UmsAdmin login(String username, String password) {
		UmsAdmin umsAdmin = getUmsAdminByUserName(username);
		if (umsAdmin != null && umsAdmin.getPassword().equals(password)) {
			if (1 == umsAdmin.getInitLogin()) {
				umsAdmin.setInitLogin(0);
				umsAdminMapper.updateById(umsAdmin);
			}
			umsAdmin.setPassword(null);
			return umsAdmin;
		}
		return null;
	}

	@Override
	public boolean resetPwd(ResetPasswordDto resetPasswordDto) {
		if (resetPasswordDto.getId() == null) {
			return false;
		}
		UpdateWrapper<UmsAdmin> wrapper = new UpdateWrapper<>();
		wrapper.set("password", resetPasswordDto.getNewPassword()).eq("id", resetPasswordDto.getId()).eq("password", resetPasswordDto.getOldPassword());
		return umsAdminMapper.update(new UmsAdmin(), wrapper) > 0;
	}

	@Override
	public boolean updateInfo(UpdateAdminDto updateAdminDto) {
		if (updateAdminDto.getId() == null) {
			return false;
		}
		UmsAdmin umsAdmin = new UmsAdmin();
		BeanUtils.copyProperties(updateAdminDto, umsAdmin);
		return umsAdminMapper.updateById(umsAdmin) > 0;
	}

}
