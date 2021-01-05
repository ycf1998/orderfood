package org.money.orderfood.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Component
@ConfigurationProperties(prefix = "money")
public class MoneyConfig {

    /** 项目名称 */
    private String name;

    /** 项目url */
    private String baseUrl;

    /** 上传路径 */
    private static String basePath;

    public String getName() {
        return this.name;
    }

    public String getBaseUrl() {
        return baseUrl;
    }

    public void setBaseUrl(String baseUrl) {
        this.baseUrl = baseUrl;
    }

    public void setName(String name) {
        this.name = name;
    }

    public static String getBasePath() {
        return basePath;
    }

    public void setBasePath(String basePath) {
        MoneyConfig.basePath = basePath;
    }

}
