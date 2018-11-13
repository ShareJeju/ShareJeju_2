package com.sist.controller;

import static java.lang.annotation.ElementType.TYPE;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Retention;
import java.lang.annotation.Target;
//TYPE : 모든 model.class위에 올라가야한다
@Retention(RUNTIME)
@Target(TYPE)
public @interface Controller {
//인터페이스라서 메모리할당을 못한다.  @Controller가 클래스위에 올라가있지않으면 메모리할당을 안하는 클래스이다.
}
