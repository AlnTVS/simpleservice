package ru.bellintegrator.simpleservice.position.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import ru.bellintegrator.simpleservice.user.entity.UserEntity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@NoArgsConstructor
@Getter
@Setter
@AllArgsConstructor
@Table(name = "position")
public class PositionEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "position_name", length = 255, nullable = false)
    private String name;

//    @ManyToMany(
//            cascade = {
//                    CascadeType.PERSIST,
//                    CascadeType.MERGE
//            }
//    )
//    @JoinTable(
//            name = "user_position",
//            joinColumns = @JoinColumn(name = "position_id"),
//            inverseJoinColumns = @JoinColumn(name = "user_id")
//    )
//    private List<UserEntity> users;
//
//    public List<UserEntity> getUsers() {
//        if (users == null) {
//            users = new ArrayList<>();
//        }
//        return users;
//    }

    @Override
    public String toString() {
        return name;
    }
}
