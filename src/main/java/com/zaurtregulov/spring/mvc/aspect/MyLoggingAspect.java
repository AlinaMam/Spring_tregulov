package com.zaurtregulov.spring.mvc.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class MyLoggingAspect {
    @Around("execution(* com.zaurtregulov.spring.mvc.*.*(..))")
    public Object aroundAllRepositoryMethodsAdvice(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        MethodSignature methodSignature = (MethodSignature) proceedingJoinPoint.getSignature();//чтобы узнать имя метода
        String methodName = methodSignature.getName();
        System.out.println("Begin of: " + methodName);//выводим информацию, что этот метода начинает работу
        Object targetMethodResult = proceedingJoinPoint.proceed();//запускаем работу метода
        System.out.println("End of: " + methodName);
        return targetMethodResult;
    }
}
