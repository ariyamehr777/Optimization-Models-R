objective <- c(5,6)
coefficient.matrix <- matrix(data = c(12,15,20,30,18,16),nrow = 3,ncol = 2)
constraint.directions <- c("<=","<=","<=")
constraint.rhs <- c(100,70,80)

solution <- lp( direction = "max",
                objective.in = objective,
                const.mat = coefficient.matrix,
                const.dir = constraint.directions,
                const.rhs = constraint.rhs,
                compute.sens = TRUE)

A <- solution$solution
B <- solution$objval

Final.Solution <- c(A,B)

Final.Solution



