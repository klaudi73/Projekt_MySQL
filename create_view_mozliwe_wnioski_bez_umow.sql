CREATE VIEW `mozliwe_wnioski_bez_umow` AS
    SELECT 
        w.wniosek__ID, u.wniosek_wniosek__ID
    FROM
        wniosek AS w
            JOIN
        umowa AS u ON w.wniosek__ID != u.wniosek_wniosek__ID;

