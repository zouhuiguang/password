package com.yibai.product;

import java.util.Scanner;

import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;
import org.jasypt.encryption.pbe.config.EnvironmentStringPBEConfig;

public class PwdDecOrEnc {

    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);

        StandardPBEStringEncryptor encryptor = new StandardPBEStringEncryptor();
        EnvironmentStringPBEConfig config = new EnvironmentStringPBEConfig();

        config.setAlgorithm("PBEWithMD5AndDES");  // 加密类型
        System.out.println("--------------->请输入密钥------->");
        String key = input.next();
        config.setPassword(key);  // 密钥
        encryptor.setConfig(config);

        String code = "";
        Integer flag = 0;
        while (true) {
            System.out.println("--------------->请输入:0加密 1解密------->");
            flag = input.nextInt();
            if(0 == flag) {
                System.out.println("--------------->请输入加密的字符------->");
                code = input.next();
                System.out.println(encryptor.encrypt(code));
            }else if(1 == flag) {
                System.out.println("--------------->请输入加密的字符------->");
                code = input.next();
                System.out.println(encryptor.decrypt(code));
            }
            System.out.println("--------------->是否退出:Y/N------->");
            code = input.next();
            if("Y".equals(code)) {
                break;
            }
        }
    }
}