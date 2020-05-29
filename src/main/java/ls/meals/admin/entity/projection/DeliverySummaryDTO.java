package ls.meals.admin.entity.projection;

import ls.meals.admin.entity.projection.DeliverySummary;
import ls.meals.admin.entity.projection.DeliverySummaryDTO;

import java.util.Date;
import java.util.Objects;

/**
 * A class I used to play around, I keep it just for reference
 * To be removed in a production environment
 */
public class DeliverySummaryDTO {

    private Date date;

    public DeliverySummaryDTO(Date date){
        this.date = date;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}

