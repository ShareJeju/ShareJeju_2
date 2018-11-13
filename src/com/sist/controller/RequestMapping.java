package com.sist.controller;

import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;
//Method : ��� �޼ҵ带 ã�� ���� �־���Ѵ�.

import java.lang.annotation.Retention;
import java.lang.annotation.Target;

@Retention(RUNTIME)
@Target(METHOD)
public @interface RequestMapping {
	//�޸��Ҵ��� ���ϴ� ��
	public String value();
}
