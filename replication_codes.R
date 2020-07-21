#SPE 448 Codes_final paper:
#Install Necessary Packages:
for (package in c('igraph', 'readr', 'statnet', 'countrycode', 'reporttools', 'ggplot2', 'stargazer', 'plm')) {
  if (!require(package, character.only=T, quietly=T)) {
    install.packages(package)
    library(package, character.only=T)
  }
}

#Start by importing data in a pairwise format creating edge and node lists:
alliance_v4_1_by_directed_yearly <- read_csv("alliance_v4.1_by_directed_yearly.csv")
data <- alliance_v4_1_by_directed_yearly[c(2:5,13,18)]
data <- na.omit(data)
data <- subset(data, year > 1944)
names(data)[names(data)=="state_name1"] <- "source"
names(data)[names(data)=="state_name2"] <- "target"

#susbet data for one year as tesy:
ts_data_frames <- lapply(unique(data$year), function (tt) subset(data, year == tt))
df.2012<-as.data.frame(ts_data_frames[[68]])
df.2011<-as.data.frame(ts_data_frames[[67]])
df.2010<-as.data.frame(ts_data_frames[[66]])
df.2009<-as.data.frame(ts_data_frames[[65]])
df.2008<-as.data.frame(ts_data_frames[[64]])
df.2007<-as.data.frame(ts_data_frames[[63]])
df.2006<-as.data.frame(ts_data_frames[[62]])
df.2005<-as.data.frame(ts_data_frames[[61]])
df.2004<-as.data.frame(ts_data_frames[[60]])
df.2003<-as.data.frame(ts_data_frames[[59]])
df.2002<-as.data.frame(ts_data_frames[[58]])
df.2001<-as.data.frame(ts_data_frames[[57]])
df.2000<-as.data.frame(ts_data_frames[[56]])
df.1999<-as.data.frame(ts_data_frames[[55]])

df.1998<-as.data.frame(ts_data_frames[[54]])
df.1997<-as.data.frame(ts_data_frames[[53]])
df.1996<-as.data.frame(ts_data_frames[[52]])
df.1995<-as.data.frame(ts_data_frames[[51]])
df.1994<-as.data.frame(ts_data_frames[[50]])
df.1993<-as.data.frame(ts_data_frames[[49]])
df.1992<-as.data.frame(ts_data_frames[[48]])
df.1991<-as.data.frame(ts_data_frames[[47]])
df.1990<-as.data.frame(ts_data_frames[[46]])
df.1989<-as.data.frame(ts_data_frames[[45]])
df.1988<-as.data.frame(ts_data_frames[[44]])
df.1987<-as.data.frame(ts_data_frames[[43]])
df.1986<-as.data.frame(ts_data_frames[[42]])
df.1985<-as.data.frame(ts_data_frames[[41]])
df.1984<-as.data.frame(ts_data_frames[[40]])
df.1983<-as.data.frame(ts_data_frames[[39]])
df.1982<-as.data.frame(ts_data_frames[[38]])
df.1981<-as.data.frame(ts_data_frames[[37]])
df.1980<-as.data.frame(ts_data_frames[[36]])

df.1979<-as.data.frame(ts_data_frames[[35]])
df.1978<-as.data.frame(ts_data_frames[[34]])
df.1977<-as.data.frame(ts_data_frames[[33]])
df.1976<-as.data.frame(ts_data_frames[[32]])
df.1975<-as.data.frame(ts_data_frames[[31]])
df.1974<-as.data.frame(ts_data_frames[[30]])
df.1973<-as.data.frame(ts_data_frames[[29]])
df.1972<-as.data.frame(ts_data_frames[[28]])
df.1971<-as.data.frame(ts_data_frames[[27]])
df.1970<-as.data.frame(ts_data_frames[[26]])

df.1969<-as.data.frame(ts_data_frames[[25]])
df.1968<-as.data.frame(ts_data_frames[[24]])
df.1967<-as.data.frame(ts_data_frames[[23]])
df.1966<-as.data.frame(ts_data_frames[[22]])
df.1965<-as.data.frame(ts_data_frames[[21]])
df.1964<-as.data.frame(ts_data_frames[[20]])
df.1963<-as.data.frame(ts_data_frames[[19]])
df.1962<-as.data.frame(ts_data_frames[[18]])
df.1961<-as.data.frame(ts_data_frames[[17]])
df.1960<-as.data.frame(ts_data_frames[[16]])

df.1959<-as.data.frame(ts_data_frames[[15]])
df.1958<-as.data.frame(ts_data_frames[[14]])
df.1957<-as.data.frame(ts_data_frames[[13]])
df.1956<-as.data.frame(ts_data_frames[[12]])
df.1955<-as.data.frame(ts_data_frames[[11]])
df.1954<-as.data.frame(ts_data_frames[[10]])
df.1953<-as.data.frame(ts_data_frames[[9]])
df.1952<-as.data.frame(ts_data_frames[[8]])
df.1951<-as.data.frame(ts_data_frames[[7]])
df.1950<-as.data.frame(ts_data_frames[[6]])

df.1949<-as.data.frame(ts_data_frames[[5]])
df.1948<-as.data.frame(ts_data_frames[[4]])
df.1947<-as.data.frame(ts_data_frames[[3]])
df.1946<-as.data.frame(ts_data_frames[[2]])
df.1945<-as.data.frame(ts_data_frames[[1]])

#create an edge list: 
edges.1945 <- df.1945[c(2,4)]
edges.1946 <- df.1946[c(2,4)]
edges.1947 <- df.1947[c(2,4)]
edges.1948 <- df.1948[c(2,4)]
edges.1949 <- df.1949[c(2,4)]
edges.1950 <- df.1950[c(2,4)]

edges.1951 <- df.1951[c(2,4)]
edges.1952 <- df.1952[c(2,4)]
edges.1953 <- df.1953[c(2,4)]
edges.1954 <- df.1954[c(2,4)]
edges.1955 <- df.1955[c(2,4)]
edges.1956 <- df.1956[c(2,4)]
edges.1957 <- df.1957[c(2,4)]
edges.1958 <- df.1958[c(2,4)]
edges.1959 <- df.1959[c(2,4)]

edges.1960 <- df.1960[c(2,4)]
edges.1961 <- df.1961[c(2,4)]
edges.1962 <- df.1962[c(2,4)]
edges.1963 <- df.1963[c(2,4)]
edges.1964 <- df.1964[c(2,4)]
edges.1965 <- df.1965[c(2,4)]
edges.1966 <- df.1966[c(2,4)]
edges.1967 <- df.1967[c(2,4)]
edges.1968 <- df.1968[c(2,4)]
edges.1969 <- df.1969[c(2,4)]

edges.1970 <- df.1970[c(2,4)]
edges.1971 <- df.1971[c(2,4)]
edges.1972 <- df.1972[c(2,4)]
edges.1973 <- df.1973[c(2,4)]
edges.1974 <- df.1974[c(2,4)]
edges.1975 <- df.1975[c(2,4)]
edges.1976 <- df.1976[c(2,4)]
edges.1977 <- df.1977[c(2,4)]
edges.1978 <- df.1978[c(2,4)]
edges.1979 <- df.1979[c(2,4)]

edges.1980 <- df.1980[c(2,4)]
edges.1981 <- df.1981[c(2,4)]
edges.1982 <- df.1982[c(2,4)]
edges.1983 <- df.1983[c(2,4)]
edges.1984 <- df.1984[c(2,4)]
edges.1985 <- df.1985[c(2,4)]
edges.1986 <- df.1986[c(2,4)]
edges.1987 <- df.1987[c(2,4)]
edges.1988 <- df.1988[c(2,4)]
edges.1989 <- df.1989[c(2,4)]

edges.1990 <- df.1990[c(2,4)]
edges.1991 <- df.1991[c(2,4)]
edges.1992 <- df.1992[c(2,4)]
edges.1993 <- df.1993[c(2,4)]
edges.1994 <- df.1994[c(2,4)]
edges.1995 <- df.1995[c(2,4)]
edges.1996 <- df.1996[c(2,4)]
edges.1997 <- df.1997[c(2,4)]
edges.1998 <- df.1998[c(2,4)]
edges.1999 <- df.1999[c(2,4)]

edges.2000 <- df.2000[c(2,4)]
edges.2001 <- df.2001[c(2,4)]
edges.2002 <- df.2002[c(2,4)]
edges.2003 <- df.2003[c(2,4)]
edges.2004 <- df.2004[c(2,4)]
edges.2005 <- df.2005[c(2,4)]
edges.2006 <- df.2006[c(2,4)]
edges.2007 <- df.2007[c(2,4)]
edges.2008 <- df.2008[c(2,4)]
edges.2009 <- df.2009[c(2,4)]
edges.2010 <- df.2010[c(2,4)]
edges.2011 <- df.2011[c(2,4)]
edges.2012 <- df.2012[c(2,4)]


#create graph objecst:
el.1945=as.matrix(edges.1945) 
el.1946=as.matrix(edges.1946) 
el.1947=as.matrix(edges.1947) 
el.1948=as.matrix(edges.1948) 
el.1949=as.matrix(edges.1949) 

el.1950=as.matrix(edges.1950)
el.1951=as.matrix(edges.1951)
el.1952=as.matrix(edges.1952)
el.1953=as.matrix(edges.1953)
el.1954=as.matrix(edges.1954)
el.1955=as.matrix(edges.1955)
el.1956=as.matrix(edges.1956)
el.1957=as.matrix(edges.1957)
el.1958=as.matrix(edges.1958)
el.1959=as.matrix(edges.1959)

el.1960=as.matrix(edges.1960)
el.1961=as.matrix(edges.1961)
el.1962=as.matrix(edges.1962)
el.1963=as.matrix(edges.1963)
el.1964=as.matrix(edges.1964)
el.1965=as.matrix(edges.1965)
el.1966=as.matrix(edges.1966)
el.1967=as.matrix(edges.1967)
el.1968=as.matrix(edges.1968)
el.1969=as.matrix(edges.1969)

el.1970=as.matrix(edges.1970)
el.1971=as.matrix(edges.1971)
el.1972=as.matrix(edges.1972)
el.1973=as.matrix(edges.1973)
el.1974=as.matrix(edges.1974)
el.1975=as.matrix(edges.1975)
el.1976=as.matrix(edges.1976)
el.1977=as.matrix(edges.1977)
el.1978=as.matrix(edges.1978)
el.1979=as.matrix(edges.1979)

el.1980=as.matrix(edges.1980)
el.1981=as.matrix(edges.1981)
el.1982=as.matrix(edges.1982)
el.1983=as.matrix(edges.1983)
el.1984=as.matrix(edges.1984)
el.1985=as.matrix(edges.1985)
el.1986=as.matrix(edges.1986)
el.1987=as.matrix(edges.1987)
el.1988=as.matrix(edges.1988)
el.1989=as.matrix(edges.1989)

el.1990=as.matrix(edges.1990)
el.1991=as.matrix(edges.1991)
el.1992=as.matrix(edges.1992)
el.1993=as.matrix(edges.1993)
el.1994=as.matrix(edges.1994)
el.1995=as.matrix(edges.1995)
el.1996=as.matrix(edges.1996)
el.1997=as.matrix(edges.1997)
el.1998=as.matrix(edges.1998)
el.1999=as.matrix(edges.1999)

el.2000=as.matrix(edges.2000)
el.2001=as.matrix(edges.2001)
el.2002=as.matrix(edges.2002)
el.2003=as.matrix(edges.2003)
el.2004=as.matrix(edges.2004)
el.2005=as.matrix(edges.2005)
el.2006=as.matrix(edges.2006)
el.2007=as.matrix(edges.2007)
el.2008=as.matrix(edges.2008)
el.2009=as.matrix(edges.2009)
el.2010=as.matrix(edges.2010)
el.2011=as.matrix(edges.2011)
el.2012=as.matrix(edges.2012)


# turns the edgelist into a 'graph object'
g.1945=graph.edgelist(el.1945,directed=TRUE) 
g.1946=graph.edgelist(el.1946,directed=TRUE)
g.1947=graph.edgelist(el.1947,directed=TRUE)
g.1948=graph.edgelist(el.1948,directed=TRUE)
g.1949=graph.edgelist(el.1949,directed=TRUE)

g.1950=graph.edgelist(el.1950,directed=TRUE)
g.1951=graph.edgelist(el.1951,directed=TRUE)
g.1952=graph.edgelist(el.1952,directed=TRUE)
g.1953=graph.edgelist(el.1953,directed=TRUE)
g.1954=graph.edgelist(el.1954,directed=TRUE)
g.1955=graph.edgelist(el.1955,directed=TRUE)
g.1956=graph.edgelist(el.1956,directed=TRUE)
g.1957=graph.edgelist(el.1957,directed=TRUE)
g.1958=graph.edgelist(el.1958,directed=TRUE)
g.1959=graph.edgelist(el.1959,directed=TRUE)

g.1960=graph.edgelist(el.1960,directed=TRUE)
g.1961=graph.edgelist(el.1961,directed=TRUE)
g.1962=graph.edgelist(el.1962,directed=TRUE)
g.1963=graph.edgelist(el.1963,directed=TRUE)
g.1964=graph.edgelist(el.1964,directed=TRUE)
g.1965=graph.edgelist(el.1965,directed=TRUE)
g.1966=graph.edgelist(el.1966,directed=TRUE)
g.1967=graph.edgelist(el.1967,directed=TRUE)
g.1968=graph.edgelist(el.1968,directed=TRUE)
g.1969=graph.edgelist(el.1969,directed=TRUE)

g.1970=graph.edgelist(el.1970,directed=TRUE)
g.1971=graph.edgelist(el.1971,directed=TRUE)
g.1972=graph.edgelist(el.1972,directed=TRUE)
g.1973=graph.edgelist(el.1973,directed=TRUE)
g.1974=graph.edgelist(el.1974,directed=TRUE)
g.1975=graph.edgelist(el.1975,directed=TRUE)
g.1976=graph.edgelist(el.1976,directed=TRUE)
g.1977=graph.edgelist(el.1977,directed=TRUE)
g.1978=graph.edgelist(el.1978,directed=TRUE)
g.1979=graph.edgelist(el.1979,directed=TRUE)

g.1980=graph.edgelist(el.1980,directed=TRUE)
g.1981=graph.edgelist(el.1981,directed=TRUE)
g.1982=graph.edgelist(el.1982,directed=TRUE)
g.1983=graph.edgelist(el.1983,directed=TRUE)
g.1984=graph.edgelist(el.1984,directed=TRUE)
g.1985=graph.edgelist(el.1985,directed=TRUE)
g.1986=graph.edgelist(el.1986,directed=TRUE)
g.1987=graph.edgelist(el.1987,directed=TRUE)
g.1988=graph.edgelist(el.1988,directed=TRUE)
g.1989=graph.edgelist(el.1989,directed=TRUE)

g.1990=graph.edgelist(el.1990,directed=TRUE)
g.1991=graph.edgelist(el.1991,directed=TRUE)
g.1992=graph.edgelist(el.1992,directed=TRUE)
g.1993=graph.edgelist(el.1993,directed=TRUE)
g.1994=graph.edgelist(el.1994,directed=TRUE)
g.1995=graph.edgelist(el.1995,directed=TRUE)
g.1996=graph.edgelist(el.1996,directed=TRUE)
g.1997=graph.edgelist(el.1997,directed=TRUE)
g.1998=graph.edgelist(el.1998,directed=TRUE)
g.1999=graph.edgelist(el.1999,directed=TRUE)


g.2000=graph.edgelist(el.2000,directed=TRUE)
g.2001=graph.edgelist(el.2001,directed=TRUE)
g.2002=graph.edgelist(el.2002,directed=TRUE)
g.2003=graph.edgelist(el.2003,directed=TRUE)
g.2004=graph.edgelist(el.2004,directed=TRUE)
g.2005=graph.edgelist(el.2005,directed=TRUE)
g.2006=graph.edgelist(el.2006,directed=TRUE)
g.2007=graph.edgelist(el.2007,directed=TRUE)
g.2008=graph.edgelist(el.2008,directed=TRUE)
g.2009=graph.edgelist(el.2009,directed=TRUE)
g.2010=graph.edgelist(el.2010,directed=TRUE)
g.2011=graph.edgelist(el.2011,directed=TRUE)
g.2012=graph.edgelist(el.2012,directed=TRUE)



#Compute Kleinberg's authority centrality scores

authority.1945 <- as.data.frame(authority.score(g.1945))
authority.1945$country <- rownames(authority.1945)
authority.1945 <- authority.1945[c(1,23)]
authority.1945$year <- 1945

authority.1946 <- as.data.frame(authority.score(g.1946))
authority.1946$country <- rownames(authority.1946)
authority.1946 <- authority.1946[c(1,23)]
authority.1946$year <- 1946


authority.1947 <- as.data.frame(authority.score(g.1947))
authority.1947$country <- rownames(authority.1947)
authority.1947 <- authority.1947[c(1,23)]
authority.1947$year <- 1947


authority.1948 <- as.data.frame(authority.score(g.1948))
authority.1948$country <- rownames(authority.1948)
authority.1948 <- authority.1948[c(1,23)]
authority.1948$year <- 1948


authority.1949 <- as.data.frame(authority.score(g.1949))
authority.1949$country <- rownames(authority.1949)
authority.1949 <- authority.1949[c(1,23)]
authority.1949$year <- 1949



authority.1950 <- as.data.frame(authority.score(g.1950))
authority.1950$country <- rownames(authority.1950)
authority.1950 <- authority.1950[c(1,23)]
authority.1950$year <- 1950


authority.1951 <- as.data.frame(authority.score(g.1951))
authority.1951$country <- rownames(authority.1951)
authority.1951 <- authority.1951[c(1,23)]
authority.1951$year <- 1951


authority.1952 <- as.data.frame(authority.score(g.1952))
authority.1952$country <- rownames(authority.1952)
authority.1952 <- authority.1952[c(1,23)]
authority.1952$year <- 1952


authority.1953 <- as.data.frame(authority.score(g.1953))
authority.1953$country <- rownames(authority.1953)
authority.1953 <- authority.1953[c(1,23)]
authority.1953$year <- 1953


authority.1954 <- as.data.frame(authority.score(g.1954))
authority.1954$country <- rownames(authority.1954)
authority.1954 <- authority.1954[c(1,23)]
authority.1954$year <- 1954


authority.1955 <- as.data.frame(authority.score(g.1955))
authority.1955$country <- rownames(authority.1955)
authority.1955 <- authority.1955[c(1,23)]
authority.1955$year <- 1955


authority.1956 <- as.data.frame(authority.score(g.1956))
authority.1956$country <- rownames(authority.1956)
authority.1956 <- authority.1956[c(1,23)]
authority.1956$year <- 1956


authority.1957 <- as.data.frame(authority.score(g.1957))
authority.1957$country <- rownames(authority.1957)
authority.1957 <- authority.1957[c(1,23)]
authority.1957$year <- 1957


authority.1958 <- as.data.frame(authority.score(g.1958))
authority.1958$country <- rownames(authority.1958)
authority.1958 <- authority.1958[c(1,23)]
authority.1958$year <- 1958


authority.1959 <- as.data.frame(authority.score(g.1959))
authority.1959$country <- rownames(authority.1959)
authority.1959 <- authority.1959[c(1,23)]
authority.1959$year <- 1959


authority.1960 <- as.data.frame(authority.score(g.1960))
authority.1960$country <- rownames(authority.1960)
authority.1960 <- authority.1960[c(1,23)]
authority.1960$year <- 1960


authority.1961 <- as.data.frame(authority.score(g.1961))
authority.1961$country <- rownames(authority.1961)
authority.1961 <- authority.1961[c(1,23)]
authority.1961$year <- 1961


authority.1962 <- as.data.frame(authority.score(g.1962))
authority.1962$country <- rownames(authority.1962)
authority.1962 <- authority.1962[c(1,23)]
authority.1962$year <- 1962


authority.1963 <- as.data.frame(authority.score(g.1963))
authority.1963$country <- rownames(authority.1963)
authority.1963 <- authority.1963[c(1,23)]
authority.1963$year <- 1963


authority.1964 <- as.data.frame(authority.score(g.1964))
authority.1964$country <- rownames(authority.1964)
authority.1964 <- authority.1964[c(1,23)]
authority.1964$year <- 1964


authority.1965 <- as.data.frame(authority.score(g.1965))
authority.1965$country <- rownames(authority.1965)
authority.1965 <- authority.1965[c(1,23)]
authority.1965$year <- 1965


authority.1966 <- as.data.frame(authority.score(g.1966))
authority.1966$country <- rownames(authority.1966)
authority.1966 <- authority.1966[c(1,23)]
authority.1966$year <- 1966


authority.1967 <- as.data.frame(authority.score(g.1967))
authority.1967$country <- rownames(authority.1967)
authority.1967 <- authority.1967[c(1,23)]
authority.1967$year <- 1967


authority.1968 <- as.data.frame(authority.score(g.1968))
authority.1968$country <- rownames(authority.1968)
authority.1968 <- authority.1968[c(1,23)]
authority.1968$year <- 1968


authority.1969 <- as.data.frame(authority.score(g.1969))
authority.1969$country <- rownames(authority.1969)
authority.1969 <- authority.1969[c(1,23)]
authority.1969$year <- 1969


authority.1970 <- as.data.frame(authority.score(g.1970))
authority.1970$country <- rownames(authority.1970)
authority.1970 <- authority.1970[c(1,23)]
authority.1970$year <- 1970


authority.1971 <- as.data.frame(authority.score(g.1971))
authority.1971$country <- rownames(authority.1971)
authority.1971 <- authority.1971[c(1,23)]
authority.1971$year <- 1971


authority.1972 <- as.data.frame(authority.score(g.1972))
authority.1972$country <- rownames(authority.1972)
authority.1972 <- authority.1972[c(1,23)]
authority.1972$year <- 1972


authority.1973 <- as.data.frame(authority.score(g.1973))
authority.1973$country <- rownames(authority.1973)
authority.1973 <- authority.1973[c(1,23)]
authority.1973$year <- 1973


authority.1974 <- as.data.frame(authority.score(g.1974))
authority.1974$country <- rownames(authority.1974)
authority.1974 <- authority.1974[c(1,23)]
authority.1974$year <- 1974


authority.1975 <- as.data.frame(authority.score(g.1975))
authority.1975$country <- rownames(authority.1975)
authority.1975 <- authority.1975[c(1,23)]
authority.1975$year <- 1975


authority.1976 <- as.data.frame(authority.score(g.1976))
authority.1976$country <- rownames(authority.1976)
authority.1976 <- authority.1976[c(1,23)]
authority.1976$year <- 1976


authority.1977 <- as.data.frame(authority.score(g.1977))
authority.1977$country <- rownames(authority.1977)
authority.1977 <- authority.1977[c(1,23)]
authority.1977$year <- 1977


authority.1978 <- as.data.frame(authority.score(g.1978))
authority.1978$country <- rownames(authority.1978)
authority.1978 <- authority.1978[c(1,23)]
authority.1978$year <- 1978


authority.1979 <- as.data.frame(authority.score(g.1979))
authority.1979$country <- rownames(authority.1979)
authority.1979 <- authority.1979[c(1,23)]
authority.1979$year <- 1979


authority.1980 <- as.data.frame(authority.score(g.1980))
authority.1980$country <- rownames(authority.1980)
authority.1980 <- authority.1980[c(1,23)]
authority.1980$year <- 1980


authority.1981 <- as.data.frame(authority.score(g.1981))
authority.1981$country <- rownames(authority.1981)
authority.1981 <- authority.1981[c(1,23)]
authority.1981$year <- 1981


authority.1982 <- as.data.frame(authority.score(g.1982))
authority.1982$country <- rownames(authority.1982)
authority.1982 <- authority.1982[c(1,23)]
authority.1982$year <- 1982


authority.1983 <- as.data.frame(authority.score(g.1983))
authority.1983$country <- rownames(authority.1983)
authority.1983 <- authority.1983[c(1,23)]
authority.1983$year <- 1983


authority.1984 <- as.data.frame(authority.score(g.1984))
authority.1984$country <- rownames(authority.1984)
authority.1984 <- authority.1984[c(1,23)]
authority.1984$year <- 1984


authority.1985 <- as.data.frame(authority.score(g.1985))
authority.1985$country <- rownames(authority.1985)
authority.1985 <- authority.1985[c(1,23)]
authority.1985$year <- 1985


authority.1986 <- as.data.frame(authority.score(g.1986))
authority.1986$country <- rownames(authority.1986)
authority.1986 <- authority.1986[c(1,23)]
authority.1986$year <- 1986


authority.1987 <- as.data.frame(authority.score(g.1987))
authority.1987$country <- rownames(authority.1987)
authority.1987 <- authority.1987[c(1,23)]
authority.1987$year <- 1987


authority.1988 <- as.data.frame(authority.score(g.1988))
authority.1988$country <- rownames(authority.1988)
authority.1988 <- authority.1988[c(1,23)]
authority.1988$year <- 1988


authority.1989 <- as.data.frame(authority.score(g.1989))
authority.1989$country <- rownames(authority.1989)
authority.1989 <- authority.1989[c(1,23)]
authority.1989$year <- 1989


authority.1990 <- as.data.frame(authority.score(g.1990))
authority.1990$country <- rownames(authority.1990)
authority.1990 <- authority.1990[c(1,23)]
authority.1990$year <- 1990


authority.1991 <- as.data.frame(authority.score(g.1991))
authority.1991$country <- rownames(authority.1991)
authority.1991 <- authority.1991[c(1,23)]
authority.1991$year <- 1991


authority.1992 <- as.data.frame(authority.score(g.1992))
authority.1992$country <- rownames(authority.1992)
authority.1992 <- authority.1992[c(1,23)]
authority.1992$year <- 1992


authority.1993 <- as.data.frame(authority.score(g.1993))
authority.1993$country <- rownames(authority.1993)
authority.1993 <- authority.1993[c(1,23)]
authority.1993$year <- 1993


authority.1994 <- as.data.frame(authority.score(g.1994))
authority.1994$country <- rownames(authority.1994)
authority.1994 <- authority.1994[c(1,23)]
authority.1994$year <- 1994


authority.1995 <- as.data.frame(authority.score(g.1995))
authority.1995$country <- rownames(authority.1995)
authority.1995 <- authority.1995[c(1,23)]
authority.1995$year <- 1995


authority.1996 <- as.data.frame(authority.score(g.1996))
authority.1996$country <- rownames(authority.1996)
authority.1996 <- authority.1996[c(1,23)]
authority.1996$year <- 1996


authority.1997 <- as.data.frame(authority.score(g.1997))
authority.1997$country <- rownames(authority.1997)
authority.1997 <- authority.1997[c(1,23)]
authority.1997$year <- 1997


authority.1998 <- as.data.frame(authority.score(g.1998))
authority.1998$country <- rownames(authority.1998)
authority.1998 <- authority.1998[c(1,23)]
authority.1998$year <- 1998


authority.1999 <- as.data.frame(authority.score(g.1999))
authority.1999$country <- rownames(authority.1999)
authority.1999 <- authority.1999[c(1,23)]
authority.1999$year <- 1999


authority.2000 <- as.data.frame(authority.score(g.2000))
authority.2000$country <- rownames(authority.2000)
authority.2000 <- authority.2000[c(1,23)]
authority.2000$year <- 2000


authority.2001 <- as.data.frame(authority.score(g.2001))
authority.2001$country <- rownames(authority.2001)
authority.2001 <- authority.2001[c(1,23)]
authority.2001$year <- 2001


authority.2002 <- as.data.frame(authority.score(g.2002))
authority.2002$country <- rownames(authority.2002)
authority.2002 <- authority.2002[c(1,23)]
authority.2002$year <- 2002


authority.2003 <- as.data.frame(authority.score(g.2003))
authority.2003$country <- rownames(authority.2003)
authority.2003 <- authority.2003[c(1,23)]
authority.2003$year <- 2003


authority.2004 <- as.data.frame(authority.score(g.2004))
authority.2004$country <- rownames(authority.2004)
authority.2004 <- authority.2004[c(1,23)]
authority.2004$year <- 2004


authority.2005 <- as.data.frame(authority.score(g.2005))
authority.2005$country <- rownames(authority.2005)
authority.2005 <- authority.2005[c(1,23)]
authority.2005$year <- 2005


authority.2006 <- as.data.frame(authority.score(g.2006))
authority.2006$country <- rownames(authority.2006)
authority.2006 <- authority.2006[c(1,23)]
authority.2006$year <- 2006


authority.2007 <- as.data.frame(authority.score(g.2007))
authority.2007$country <- rownames(authority.2007)
authority.2007 <- authority.2007[c(1,23)]
authority.2007$year <- 2007


authority.2008 <- as.data.frame(authority.score(g.2008))
authority.2008$country <- rownames(authority.2008)
authority.2008 <- authority.2008[c(1,23)]
authority.2008$year <- 2008


authority.2009 <- as.data.frame(authority.score(g.2009))
authority.2009$country <- rownames(authority.2009)
authority.2009 <- authority.2009[c(1,23)]
authority.2009$year <- 2009


authority.2010 <- as.data.frame(authority.score(g.2010))
authority.2010$country <- rownames(authority.2010)
authority.2010 <- authority.2010[c(1,23)]
authority.2010$year <- 2010


authority.2011 <- as.data.frame(authority.score(g.2011))
authority.2011$country <- rownames(authority.2011)
authority.2011 <- authority.2011[c(1,23)]
authority.2011$year <- 2011


authority.2012 <- as.data.frame(authority.score(g.2012))
authority.2012$country <- rownames(authority.2012)
authority.2012 <- authority.2012[c(1,23)]
authority.2012$year <- 2012

## rbind files: 

SNA_ouput <- authority.1945

SNA_ouput <- rbind(SNA_ouput, authority.1946)
SNA_ouput <- rbind(SNA_ouput, authority.1947)
SNA_ouput <- rbind(SNA_ouput, authority.1948)
SNA_ouput <- rbind(SNA_ouput, authority.1949)
SNA_ouput <- rbind(SNA_ouput, authority.1950)
SNA_ouput <- rbind(SNA_ouput, authority.1951)
SNA_ouput <- rbind(SNA_ouput, authority.1952)
SNA_ouput <- rbind(SNA_ouput, authority.1953)
SNA_ouput <- rbind(SNA_ouput, authority.1954)
SNA_ouput <- rbind(SNA_ouput, authority.1955)
SNA_ouput <- rbind(SNA_ouput, authority.1956)
SNA_ouput <- rbind(SNA_ouput, authority.1957)
SNA_ouput <- rbind(SNA_ouput, authority.1958)
SNA_ouput <- rbind(SNA_ouput, authority.1959)
SNA_ouput <- rbind(SNA_ouput, authority.1960)
SNA_ouput <- rbind(SNA_ouput, authority.1961)
SNA_ouput <- rbind(SNA_ouput, authority.1962)
SNA_ouput <- rbind(SNA_ouput, authority.1963)
SNA_ouput <- rbind(SNA_ouput, authority.1964)
SNA_ouput <- rbind(SNA_ouput, authority.1965)
SNA_ouput <- rbind(SNA_ouput, authority.1966)
SNA_ouput <- rbind(SNA_ouput, authority.1967)
SNA_ouput <- rbind(SNA_ouput, authority.1968)
SNA_ouput <- rbind(SNA_ouput, authority.1969)
SNA_ouput <- rbind(SNA_ouput, authority.1970)
SNA_ouput <- rbind(SNA_ouput, authority.1971)
SNA_ouput <- rbind(SNA_ouput, authority.1972)
SNA_ouput <- rbind(SNA_ouput, authority.1973)
SNA_ouput <- rbind(SNA_ouput, authority.1974)
SNA_ouput <- rbind(SNA_ouput, authority.1975)
SNA_ouput <- rbind(SNA_ouput, authority.1976)
SNA_ouput <- rbind(SNA_ouput, authority.1977)
SNA_ouput <- rbind(SNA_ouput, authority.1978)
SNA_ouput <- rbind(SNA_ouput, authority.1979)
SNA_ouput <- rbind(SNA_ouput, authority.1980)
SNA_ouput <- rbind(SNA_ouput, authority.1981)
SNA_ouput <- rbind(SNA_ouput, authority.1982)
SNA_ouput <- rbind(SNA_ouput, authority.1983)
SNA_ouput <- rbind(SNA_ouput, authority.1984)
SNA_ouput <- rbind(SNA_ouput, authority.1985)
SNA_ouput <- rbind(SNA_ouput, authority.1986)
SNA_ouput <- rbind(SNA_ouput, authority.1987)
SNA_ouput <- rbind(SNA_ouput, authority.1988)
SNA_ouput <- rbind(SNA_ouput, authority.1989)
SNA_ouput <- rbind(SNA_ouput, authority.1990)
SNA_ouput <- rbind(SNA_ouput, authority.1991)
SNA_ouput <- rbind(SNA_ouput, authority.1992)
SNA_ouput <- rbind(SNA_ouput, authority.1993)
SNA_ouput <- rbind(SNA_ouput, authority.1994)
SNA_ouput <- rbind(SNA_ouput, authority.1995)
SNA_ouput <- rbind(SNA_ouput, authority.1996)
SNA_ouput <- rbind(SNA_ouput, authority.1997)
SNA_ouput <- rbind(SNA_ouput, authority.1998)
SNA_ouput <- rbind(SNA_ouput, authority.1999)
SNA_ouput <- rbind(SNA_ouput, authority.2000)
SNA_ouput <- rbind(SNA_ouput, authority.2001)
SNA_ouput <- rbind(SNA_ouput, authority.2002)
SNA_ouput <- rbind(SNA_ouput, authority.2003)
SNA_ouput <- rbind(SNA_ouput, authority.2004)
SNA_ouput <- rbind(SNA_ouput, authority.2005)
SNA_ouput <- rbind(SNA_ouput, authority.2006)
SNA_ouput <- rbind(SNA_ouput, authority.2007)
SNA_ouput <- rbind(SNA_ouput, authority.2008)
SNA_ouput <- rbind(SNA_ouput, authority.2009)
SNA_ouput <- rbind(SNA_ouput, authority.2010)
SNA_ouput <- rbind(SNA_ouput, authority.2011)
SNA_ouput <- rbind(SNA_ouput, authority.2012)


write.csv(SNA_ouput, file = "SNA_Output.csv")

##### Merge SNA output and structural IVs:
structural_IVs <- read.csv("structural_IVs.csv")
structural_IVs$un <- as.numeric(structural_IVs$un)
SNA_Output_2 <- read.csv("SNA_Output.csv")
new_SNA <- SNA_Output_2[order(SNA_Output_2),] 
new_SNA$country <- as.character(new_SNA$country)

#One last step is to correct names from two datasets:
structural_IVs$country.name   <- countrycode(structural_IVs$un, "un", "country.name")
new_SNA$country.name <- countrycode(new_SNA$country, "country.name","country.name")

final.data <- merge(structural_IVs,new_SNA,by=c("year","country.name"))

write.csv(final.data, file = "Final_data.csv")

###Load Final Data:
Final_data <- read.csv("Final_data.csv")
Final_data2 <- subset(Final_data, year >1989)

vars <- Final_data2[, 2:9]

tableContinuous(vars = vars, stats = c("n", "min", "mean", "median", 
                                       "max", "iqr", "na"), print.pval = "kruskal", 
                cap = "Table of continuous variables.", lab = "tab: descr stat")

# Add the regression line
names(Final_data2)[names(Final_data2)=="Kleinberg.s.authority.centrality.score"] <- "Kleinberg Authority Centrality Score"
ggplot(Final_data2, aes(x=cspv_intwar, y=`Kleinberg Authority Centrality Score`)) + 
  geom_point()+
  geom_smooth(method=lm)


##Run the panel regression: 
# Simple regressions for 1990 and 2012 cross sections, as in SW
reg1990 = lm(cspv_intwar ~ Kleinberg.s.authority.centrality.score,
             data = subset(Final_data2, year==1990))
reg2010 = lm(cspv_intwar ~ Kleinberg.s.authority.centrality.score,
             data = subset(Final_data2, year==2010))

stargazer(reg1990, reg2012, title="Regression Results")

##Pooled Model:
reg1 = plm(cspv_intwar ~ Kleinberg.s.authority.centrality.score + imf_gdp + imf_pop + p_democ + wdi_unempyilo,
           data = Final_data2, index = c("country","year"), model="pooling")

summary(reg1)

reg2 = plm(cspv_intwar ~ Kleinberg.s.authority.centrality.score + imf_gdp + imf_pop + p_democ + wdi_unempyilo,
           data = Final_data2, index = c("country","year"), model="within", effect="individual")
summary(reg2)

stargazer(reg2, tile = "Fixed Effects Panel Model (1990-2010)")




