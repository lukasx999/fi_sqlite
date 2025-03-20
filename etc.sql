SELECT date, incoming, outgoing, incoming - outgoing as balance
FROM (
    SELECT
        date,
        sum(CASE WHEN incoming THEN amount_eur + amount_cent/100.0 END) as incoming,
        sum(CASE WHEN NOT incoming THEN (amount_eur + amount_cent/100.0) END) as outgoing
    FROM booking_line
    GROUP BY date ORDER BY date
);
