package org.money.orderfood.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Component;

/**
 * 
 * @ClassName: MybatisConfig 
 * @Description: Mybatis配置类
 * @author money
 * @date 2020年11月17日
 */
@Component
@MapperScan("org.money.orderfood.mapper")
public class MybatisConfig {
}
