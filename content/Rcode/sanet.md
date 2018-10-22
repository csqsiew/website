+++
categories = ""
comments = false
date = "2018-06-01"
draft = false
slug = ""
tags = ""
title = "spreading activation in a network"
description = "took me 4 years"
showpagemeta = false
+++
    
*sanetr: A R package to simulate spreading activation in a network*

*Edit: I get to work on the paper and package some more! "Major revisions" are requested. Check out the new package [here](https://github.com/csqsiew/spreadr) Hopefully I'll have some good news in a few months.*    
--CS (Oct 2018)

The notion of spreading activation is a prevalent metaphor in the cognitive sciences; however, the tools to implement spreading activation in a computational simulation are not as readily available. Recently I submitted a paper that introduces the `sanetr` R package, which can implement spreading activation within a specified network structure. The algorithmic method implemented in `sanet` subroutines followed the approach described in Vitevitch, Ercal, and Adagarla (2011), who viewed activation as a fixed cognitive resource that could “spread” among connected nodes in a network. 

This is a paper that I am very proud of--until the reviews come back, perhaps. I started writing the basic functions for `sanetr` way back in 2014 (after reading the 2011 paper), and have been working on it on and off for the past 4 years. About 8 months ago I started re-writing the code in a more "user-friendly" format so that others might be able to use it for their own research. The package is not perfect and still a work in progress, but the aim of putting out this paper is to encourage cognitive scientists to explicitly consider how the structure of cognitive systems affects the way people process information. A simple tool like `sanetr` might help make this idea more concrete and help shift the balance away from research that overwhelmingly focusses on the cognitive process itself to research that considers the interaction between structure and process.  

Fingers crossed for good news in a few months time. But even if the paper is never published, the package, all source code and a user manual can be found in the github repo below. If you have any comments or feedback, do get in touch! 

* [Github repo](https://github.com/csqsiew/sanetr)
* [Vitevitch et al. paper](https://www.frontiersin.org/articles/10.3389/fpsyg.2011.00369/full)

