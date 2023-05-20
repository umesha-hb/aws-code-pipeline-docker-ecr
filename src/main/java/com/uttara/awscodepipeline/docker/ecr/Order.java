package com.uttara.awscodepipeline.docker.ecr;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString

public class Order {
    private int id;
    private String name;
    private int quantity;

    private long price;


}
