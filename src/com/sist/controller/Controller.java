package com.sist.controller;

import static java.lang.annotation.ElementType.TYPE;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Retention;
import java.lang.annotation.Target;
//TYPE : ��� model.class���� �ö󰡾��Ѵ�
@Retention(RUNTIME)
@Target(TYPE)
public @interface Controller {
//�������̽��� �޸��Ҵ��� ���Ѵ�.  @Controller�� Ŭ�������� �ö����������� �޸��Ҵ��� ���ϴ� Ŭ�����̴�.
}
