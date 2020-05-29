package ls.meals.admin.dao;

import ls.meals.admin.entity.Rating;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:4200")
public interface RatingRepository extends JpaRepository<Rating, Long> {
}
