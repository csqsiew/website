library(stringi)
library(dplyr)

## SET UP 

# read in data 
data <- readLines('pi_dec_1m.txt') # downloaded from http://pi2e.ch/blog/2017/03/10/pi-digits-download/
data <- gsub('\\.', '', data)
all_pi <- stringi::stri_sub(data, seq(1, stringi::stri_length(data), by = 1), length = 1)

# set up numbers df
# angle of line segments depends on the digit 
th <- seq(0, 2*3.14, length.out=11) #need 11, weird quirk 
r <- 2
x <- r*cos(th)
y <- r*sin(th)
x<-x[-11]
y<-y[-11]
nums<-c(5, 4, 3, 2, 1, 0, 9, 8, 7, 6)
numbers<-as.data.frame(cbind(x, y, nums))

# data for plotting 

make_df <- function(x) {
  some_pi <- as.numeric(all_pi[1:(x+1)])
  some_pi<-as.data.frame(some_pi)
  colnames(some_pi) <- 'nums'
  some_pi <- some_pi %>% left_join(numbers, by = 'nums')
  return(some_pi)
}

new_pi <- make_df(10)
new_pi <- make_df(100)
new_pi <- make_df(1000)
new_pi <- make_df(10000)
new_pi <- make_df(100000)

# recommended ranges 

# 10
x <- c(-2,6)
y <- c(0,8)

# 100
x <- c(-10,10)
y <- c(-6,14)

# 1000
x <- c(-60,10)
y <- c(-10,60)

#10000
x <- c(-110,180)
y <- c(-110,180)

#100000 - nice level of resolution, wallpaper one 
x <- c(-200,180)
y <- c(-200,180)

#100000
x <- c(-300,500)
y <- c(-450,350)

## PLOT

# set graphical parameters
op = par(bg = "black", mar = rep(0.5, 4)) #use this to make background black 

# set up the plot
plot(x, y, type = 'n')

x_start <- 0
y_start <- 0

colors <- c('red', 'blue', 'green', 'yellow', 'white', 'orange', 'pink', 'purple')

for (i in 1:nrow(new_pi)) { 
  x_end <- x_start + new_pi$x[i]
  y_end <- y_start + new_pi$y[i]
  segments(x0 = x_start, y0 = y_start, x1 = x_end, y1 = y_end, col=colors[sample(1:8,1)])
  x_start <- x_end
  y_start <- y_end
}

# viola!

