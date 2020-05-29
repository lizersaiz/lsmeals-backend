package ls.meals.admin.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name="customer")
@Getter
@Setter
public class Customer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private Long id;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "customer_id")
    private Set<Delivery> deliveries = new HashSet<>();

    @Column(name="first_name", nullable = true)
    private String firstName;

    @Column(name="last_name", nullable = true)
    private String lastName;

    @Column(name="email", nullable = true)
    private String email;

    @Column(name="phone")
    private String phone;

    @Column(name="user_pass", nullable = true)
    private String userPass;

    public Customer(){ }
}
