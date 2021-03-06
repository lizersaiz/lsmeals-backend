package ls.meals.admin.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name="rating")
@Getter
@Setter
public class Rating {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY,
            cascade = {CascadeType.MERGE,
                    CascadeType.DETACH,
                    CascadeType.REFRESH,
                    CascadeType.PERSIST})
    private Meal meal;

    @Column(name="rating_stars", nullable = false)
    private Integer ratingStars;

    private String comments;

    public Rating() { }
}
