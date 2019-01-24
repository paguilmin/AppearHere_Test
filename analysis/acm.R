library(FactoMineR)
library(tidyverse)


bookings <- read.csv2("Documents/AppearHere_Test/analysis/bookings_ok.csv",header = T,sep=",", stringsAsFactors = F)

bookings <- bookings %>% select('ending_stage','country','city','portfolio_type',
                                'floor_size_cat','price_category','times_booked_cat',
                                'after_creation')

bookings$ending_stage <- as.factor(bookings$ending_stage)
bookings$country <- as.factor(bookings$country)
bookings$city <- as.factor(bookings$city)
bookings$portfolio_type <- as.factor(bookings$portfolio_type)
bookings$floor_size_cat <- as.factor(bookings$floor_size_cat)
bookings$price_category <- as.factor(bookings$price_category)
bookings$times_booked_cat <- as.factor(bookings$times_booked_cat)
bookings$after_creation <- as.factor(bookings$after_creation)


res.mca <- MCA(bookings[,2:8], quali.sup = 1)





library(explor)

explor(res.mca)
