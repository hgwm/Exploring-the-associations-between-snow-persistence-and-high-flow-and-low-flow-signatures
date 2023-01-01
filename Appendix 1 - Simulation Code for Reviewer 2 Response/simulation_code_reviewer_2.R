# simulation_code_reviewer_2.R generates a graphical example of the estimation of true beta value 
# (i.e. functional relationship between covariate and response) using simple linear regression.
# Used in the Response to Reviewer 2
# Author: Joseph Janssen

# Generate a sample dataset.
set.seed(1)
n <- 5000
x <- rnorm(n)
y1 <- 1 + 0.2 * x + rnorm(n, sd = 0.1)
y2 <- 1 + 0.2 * x + rnorm(n, sd = 3)

# Fit models
mod1 <- lm(y1~x)
mod2 <- lm(y2~x)

sum_mod1 <- summary(mod1)
sum_mod2 <- summary(mod2)

# Plot 
par(mfrow = c(1,2))
plot(x,y1, cex = 0.5, xlab = "Predictor", ylab = "Response", 
     main = paste0("R Squared = ", round(sum_mod1$r.squared, 3)))
abline(mod1, col = "red", lwd = 2)
abline(a = 1, b = 0.2, col = "blue", lwd=2)
text(x = 2, y = 0.3,
     labels =  paste0("Est. Beta: ", round(mod1$coefficients[2],4) ) )
text(x = 2, y = 0.2,
     labels =  paste0("True Beta: 0.2"))

legend("topleft",c("True Model", "Estimated Model") ,col = c("blue", "red"), lty = 1, lwd= 2)


plot(x,y2, cex = 0.5, xlab = "Predictor", ylab = "Response", 
     main = paste0("R Squared = ", round(sum_mod2$r.squared, 3)))
abline(mod2, col = "red", lwd = 2)
abline(a = 1, b = 0.2, col = "blue", lwd=2)

text(x = 2, y = -10,
     labels =  paste0("Est. Beta: ", round(mod2$coefficients[2],4) ) )
text(x = 2, y = -11.5,
     labels =  paste0("True Beta: 0.2") )
