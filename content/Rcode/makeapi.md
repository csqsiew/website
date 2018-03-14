+++
categories = ""
comments = false
date = "2018-03-14"
draft = false
slug = ""
tags = ""
title = "data art using pi digits"
description = "i made a pi"
showpagemeta = false
+++
    
*Data Art in R: A case study using a bunch of pi digits*

Happy Pi Day everyone! 

Many people have done data art with pi digits (see this awesome [collection](https://www.r-graph-gallery.com/portfolio/data-art/) of data art in R)--but I wanted to see if I could reproduce it myself by hacking some code together and am fairly pleased with the results. I think a couple of these images might become my new desktop wallpaper :)  

Concept: Plot a "random walk" of sorts where the angle (amount of rotation) of the step which the random walker takes depends on the digit in the sequence. 

Process was quite simple. 
1. Download a million digits of pi from this [website](http://pi2e.ch/blog/2017/03/10/pi-digits-download/). Get it into a dataframe with one digit in each row.   
2. Create a dataframe that indicated the x- and y-locations for each digit. This step is a bit tricky... Basically draw a circle and split it up into equal parts and figure out the x- and y-distances for the center point of the circle to get there... This little legend below should help. 
![](/img/legend.png)
3. Merge the dataframes from 1. and 2. 
4. Plot the individual line segments via a for loop. Viola! 

**First 11 digits of pi**

![](/img/10pi.jpg)

**First 101 digits of pi**

![](/img/100pi.jpg)

**First 1001 digits of pi**

![](/img/1000pi.jpg)

**First 10001 digits of pi**

![](/img/10000pi.jpg)

**First 100001 digits of pi**

![](/img/100000pi.jpg)

You can find the R script to create these figures [here](github). 
