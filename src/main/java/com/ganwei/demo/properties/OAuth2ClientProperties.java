package com.ganwei.demo.properties;

import lombok.Data;

/**
 * Created on 2018/1/24 0024.
 *
 * @author zlf
 * @email i@merryyou.cn
 * @since 1.0
 */
@Data
public class OAuth2ClientProperties {

    private String clientId;

    private String clientSecret;

    private Integer accessTokenValiditySeconds = 7200;
}
