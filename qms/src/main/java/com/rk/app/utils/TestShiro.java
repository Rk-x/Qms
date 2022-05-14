package com.rk.app.utils;

import org.apache.shiro.crypto.hash.Md5Hash;

public class TestShiro {
    public static void main(String[] args) {
        //source 加密源   salt加密规则
        //hashIterations 加密次数
        Md5Hash md5Hash=new Md5Hash("1","1"+"1",1000);
        System.out.println(md5Hash.toString());
    }
}
