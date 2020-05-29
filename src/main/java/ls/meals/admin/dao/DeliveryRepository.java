package ls.meals.admin.dao;

import ls.meals.admin.entity.Delivery;
import ls.meals.admin.entity.projection.DeliverySummary;
import ls.meals.admin.entity.projection.DeliverySummaryDTO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestParam;

import java.awt.print.Pageable;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

@CrossOrigin("http://localhost:4200")
// make projection default: excerptProjection = DeliverySummary.class
// access projection http://localhost:8080/api/deliveries?projection=deliverySummary
@RepositoryRestResource(collectionResourceRel = "deliveries", path = "deliveries")
public interface DeliveryRepository extends CrudRepository<Delivery, Long> {

   // TODO make this endpoints return type compliant with REST in 0.2-SNAPSHOT
   @Query("SELECT COUNT(d.date), MONTH(d.date)" +
           "FROM Delivery d " +
           "WHERE YEAR(d.date) = :year " +
           "GROUP BY MONTH(d.date) " +
           "ORDER BY MONTH(d.date) ASC")
   @RestResource(path = "deliveryCountByYear", rel = "deliveryCountByYear")
   Object[][] deliveryCountByYear(@RequestParam("year") Integer year);

   @Query("SELECT COUNT(d.date), DAY(d.date)" +
           "FROM Delivery d " +
           "WHERE YEAR(d.date) = :year AND MONTH(d.date) = :month "+
           "GROUP BY DAY(d.date) " +
           "ORDER BY DAY(d.date) ASC")
   @RestResource(path = "deliveryCountByYearAndMonth", rel = "deliveryCountByYearAndMonth")
   Object[][] deliveryCountByYearAndMonth(@RequestParam("year") Integer year, @RequestParam("month") Integer month);

   // warning: hall of projection and DTO experiments ahead

   /*
   //Dirty return type without HATEOAS
   @Query("SELECT count(d) as count, MONTH(d.date) AS month " +
           "FROM Delivery d " +
           "WHERE YEAR(d.date) = :year " +
           "GROUP BY month " +
           "ORDER BY month")
   Object[][] getCountAndMonthFilterYear(@RequestParam("year") Integer year);
   */

   //List<String> myQuery();
   /*
   @Query(nativeQuery=true)
   List<Delivery> customQuery(@RequestParam("rating") Integer rating);
   /*
   @RestResource(path = "aaa", rel = "aaa")
   @Query("FROM Delivery WHERE ratingStars = :rating")
   List<Delivery> aaa(@RequestParam("rating") Integer rating);
   /*
   @Query(nativeQuery = true, value =
           "SELECT " +
           "    d.date AS date " +
           "FROM " +
           "    Delivery d " +
           "GROUP BY " +
           "    d.date")
   List<DeliverySummary> fuckyou();
   /*
   // try with DTO see https://stackoverflow.com/questions/45401734/how-to-work-with-dto-in-spring-data-rest-projects
   @RestResource(path = "getDateAndCountByYear", rel = "getDate")
   @Query("SELECT NEW ls.meals.admin.entity.projection.DeliverySummary(d.date) FROM Delivery d WHERE year(d.date) = :year")
   List<Delivery> getDateAndCountByYear(@RequestParam("year") Integer year);
   */

   //BAD: not allowing select clause with projection
   /*
   @RestResource(path = "getDateAndCountByYear", rel = "getDate")
   @Query("SELECT ratingStars FROM Delivery WHERE year(date) = :year")
   List<Delivery> getDateAndCountByYear(@RequestParam("year") Integer year);
   */

   /*
   //working projection (interface annotated with projection) with default named queries
   @RestResource(path = "customQuery", rel = "deliverySummary")
   List<Delivery> findByRatingStars(@RequestParam("year") Integer year);
    */
    /*
    @Query("SELECT FROM ls_meals.order" +
            "WHERE YEAR(order.date) = :year AND" +
            "MONTH(order.date) = :month")
    List<Order> findByMonth(@RequestParam("year") String year, @RequestParam("month") String month);

    @Query("SELECT FROM ls_meals.order" +
            "WHERE YEAR(order.date) = :year AND" +
            "MONTH(order.date) = :month")
    List<Order> findByDay(@RequestParam("year") String year, @RequestParam("month") String month, @RequestParam("day") String day);
    */
}
