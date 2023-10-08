package com.bage.study.gc.jdk21;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableAsync;

@SpringBootApplication
@Slf4j
@EnableAsync
public class GcJdk21Application implements CommandLineRunner {

    public static void main(String args[]) {
        SpringApplication.run(GcJdk21Application.class, args);
    }

    @Override
    public void run(String... strings) throws Exception {
        System.out.println(("----- GcJdk21Application is started ------"));
        log.info(("----- GcJdk21Application is started ------"));

        Thread thread = new Thread() {
            @Override
            public void run() {
                for (int i = 0; i < 1000; i++) {
                    try {
                        Thread.sleep(1000);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    System.out.println("bage-command-hhhhhh is running" + i);
                }
            }
        };
        thread.setName("bage-command-hhhhhh");
    }

}