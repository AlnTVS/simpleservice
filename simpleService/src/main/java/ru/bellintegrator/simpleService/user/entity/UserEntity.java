package ru.bellintegrator.simpleService.user.entity;

import ru.bellintegrator.simpleService.citizenship.entity.CitizenshipEntity;
import ru.bellintegrator.simpleService.document.entity.DocumentEntity;
import ru.bellintegrator.simpleService.office.entity.OfficeEntity;
import ru.bellintegrator.simpleService.position.entity.PositionEntity;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "user")
public class UserEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "office_id", nullable = false)
    private OfficeEntity office;

    @Column(name = "first_name", length = 63, nullable = false)
    private String firstName;

    @Column(name = "second_name", length = 63)
    private String secondName;

    @Column(name = "middle_name", length = 63)
    private String middleName;

    @Column(name = "last_name", length = 63)
    private String lastName;

    @OneToOne(mappedBy = "user", optional = false, cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private DocumentEntity document;

    @ManyToMany(
            cascade = {
                    CascadeType.PERSIST,
                    CascadeType.MERGE
            }
    )
    @JoinTable(
            name = "user_position",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "position_id")
    )
    private Set<PositionEntity> positions;

    @ManyToOne
    @JoinColumn(name = "citizenship_id")
    private CitizenshipEntity citizenship;

    @Column(name = "phone", length = 15)
    private String phone;

    @Column(name = "is_active", nullable = false)
    private Boolean isActive;

    public void addPosition(PositionEntity position) {
        positions.add(position);
        position.getUsers().add(this);
    }
    public void removePosition(PositionEntity position) {
        positions.remove(position);
        position.getUsers().remove(this);
    }


}