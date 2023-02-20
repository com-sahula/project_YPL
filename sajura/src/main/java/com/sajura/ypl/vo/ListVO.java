package com.sajura.ypl.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ListVO {
    private int cart_no;
    private String product_img;
    private String product_name;
    private int cart_quantity;
    private Long product_price;
}
