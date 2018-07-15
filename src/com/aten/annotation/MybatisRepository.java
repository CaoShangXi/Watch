package com.aten.annotation;

import org.springframework.stereotype.Repository;
/**
 * 自定義註解
 * @author dell
 *
 */
@Repository//聲明為持久層
public @interface MybatisRepository {
	String value() default "";
}
