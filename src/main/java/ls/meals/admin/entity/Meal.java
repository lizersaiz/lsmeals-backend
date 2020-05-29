package ls.meals.admin.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name="meal")
@Getter
@Setter
public class Meal {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private Long id;

    @ManyToMany
    @JoinTable(
            name="delivery_meal",
            joinColumns = @JoinColumn(name = "delivery_id"),
            inverseJoinColumns = @JoinColumn(name = "meal_id"))
    private Set<Delivery> deliveryMeals;

    @OneToMany(cascade = CascadeType.ALL,
               fetch = FetchType.LAZY)
    @JoinColumn(name = "meal_id")
    private Set<Rating> mealRating = new HashSet<>();

    @Column(name="name", nullable = false)
    private String name;

    @Column(name="cost", nullable = false)
    private Double cost;

    @Column(name="photo_url")
    private String photoUrl;

    public Meal(){ }
}
