sample_house_prices <- c(329000,
                         589000,
                         370000,
                         420000,
                         220000,
                         1500000,
                         370000,
                         589000,
                         235000,
                         470000,
                         89000,
                         150000,
                         950000,
                         154000,
                         225000)
sample_mean <- mean(sample_house_prices)
sample_variance <- var(sample_house_prices)
sample_standard_deviation <- sd(sample_house_prices)
sample_mean_5 <- mean(sample_house_prices[0:5])
cat("Sample Mean", sample_mean)
cat("Sample Variance", sample_variance)
cat("Sample Standard Deviation", sample_standard_deviation)
cat("Sample Mean of first 5",sample_mean_5)

house_price_ci_95 <- t.test(sample_house_prices)
house_price_ci_99 <- t.test(sample_house_prices, conf.level = 0.99)

cat("With 95%, the average price is between:", house_price_ci_95$conf.int)
cat("With 99%, the average price is between:", house_price_ci_99$conf.int)



