package ls.meals.admin.entity.projection;


import lombok.Value;
import ls.meals.admin.entity.Delivery;
import org.springframework.data.rest.core.config.Projection;

import java.util.Date;
import java.util.Objects;


/**
 * A class I used to play around, I keep it just for reference
 * To be removed in a production environment
 */
@Projection(name = "deliverySummary", types = { Delivery.class })
public interface DeliverySummary {

    //long getCount();

    //Integer getRatingStars();
    Long getCount();
}

// dto
/*
public class DeliverySummary {

    private Date date;

    public DeliverySummary(Date date){
        this.date = date;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DeliverySummary that = (DeliverySummary) o;
        return Objects.equals(date, that.date);
    }

    @Override
    public int hashCode() {
        return Objects.hash(date);
    }
}
*/

