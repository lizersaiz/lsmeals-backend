package ls.meals.admin.entity;

import lombok.*;
import ls.meals.admin.entity.projection.DeliverySummary;

import javax.persistence.*;
import java.sql.Date;
import java.util.Set;

@Entity
@Data
@Table(name="delivery")
@AllArgsConstructor

@NamedNativeQueries({

        // named query with projection

    @NamedNativeQuery(name = "Delivery.customQuery",
            //query="SELECT NEW ls.meals.admin.entity.projection.DeliverySummary(d.date) FROM Delivery d WHERE year(d.date) = :year GROUP BY month(d.date)",
            query = "SELECT d.date AS date FROM Delivery d WHERE rating_stars = :rating"),

        /*
    // named query with dto
    @NamedNativeQuery(name = "Delivery.customQuery",
            //query="SELECT NEW ls.meals.admin.entity.projection.DeliverySummary(d.date) FROM Delivery d WHERE year(d.date) = :year GROUP BY month(d.date)",
            query = "SELECT d.date AS date FROM Delivery d", resultSetMapping = "deliverySummaryResultSet")
        */
})
// ONLY for projection
@SqlResultSetMapping(
    name="deliverySummaryResultSet",
    classes={
        @ConstructorResult(
            targetClass= DeliverySummary.class,
            columns={
                @ColumnResult(name="date", type= Date.class),
            }
        )
    }
)

public class Delivery {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private Long id;

    @ManyToMany(cascade = CascadeType.ALL,
            fetch = FetchType.LAZY)
    @JoinTable(
            name="delivery_meal",
            joinColumns = @JoinColumn(name = "delivery_id"),
            inverseJoinColumns = @JoinColumn(name = "meal_id"))
    private Set<Meal> deliveryMeals;

    @ManyToOne(fetch = FetchType.LAZY,
                cascade = {CascadeType.MERGE,
                            CascadeType.DETACH,
                            CascadeType.REFRESH,
                            CascadeType.PERSIST})
    private Customer customer;

    private Date date;

    @Column(name="rating_stars")
    private Integer ratingStars;

    private String comments;

    public Delivery(){

    }

    public Delivery(Date date){
        this.date = date;
    }

}
