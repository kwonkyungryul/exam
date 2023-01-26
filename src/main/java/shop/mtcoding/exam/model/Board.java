package shop.mtcoding.exam.model;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class Board {
    private Integer id;
    private String title;
    private Integer userId;
    private Timestamp createdAt;
}
