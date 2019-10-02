/*Please add ; after each select statement*/
CREATE PROCEDURE netIncome()
BEGIN
    SELECT 
        DATE_FORMAT(date, '%Y') year, 
        -- DATE_FORMAT(date, '%m') mount
        QUARTER(date) quarter,
        -- SUM(profit) total_profit, 
        -- SUM(loss) total_loss 
        (SUM(profit) - SUM(loss) ) net_profit
    FROM accounting
    -- GROUP BY DATE_FORMAT(date, '%Y'), QUARTER(date);
    GROUP BY year, quarter;
END