package com.hfut.utils;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * 
 * ClassName: SpringSecurityUtil <br/>
 * Function: TODO SpringSerurity工具�? <br/>
 * Reason: TODO 封装SpringSerurity中常用的�?��方法. <br/>
 * date: 2015�?1�?�?下午6:41:23 <br/>
 *
 * @author ZhangXu
 * @version
 */
public class SpringSecurityUtil {
  /**
   * 测试
   * 
   * 注册时需要调用encode方法加密密码，调用语句是�?SpringSecurityUtil.encode(yourRawPassword);
   */
  public static void main(String[] args) {
    String rawPassword = "123456";// 这里是明�?
    System.out.println(rawPassword + " -> ");
    String encoderPassword = encode(rawPassword);
    System.out.println(encoderPassword);// 这里是密�?
    System.out.println("密文长度�" + encoderPassword.length());
  }

  /**
   * BCrypt加密(适用于注册时密码加密)
   * 
   * @param rawPassword 明文密码
   * @return encoderPassword 密文密码，长度为60�?
   */
  public static String encode(String rawPassword) {

    // 调用spring security的BCrypt加密
    BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
    String encoderPassword = encoder.encode(rawPassword);
    return encoderPassword;
  }

  /**
   * 获取当前用户�?适用于任何位�?
   *
   * @return username 用户�?
   */
  public static String getUsername() {

    String username = null;
    Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
    if (principal instanceof UserDetails) {
      username = ((UserDetails) principal).getUsername();
    } else {
      username = principal.toString();
    }
    return username;
  }

}

