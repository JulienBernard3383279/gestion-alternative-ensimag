table <- read.table("data.csv", header=TRUE, sep=";")

dict <- vector(mode="list", length=1087)

for (i in 1:1087) {
  dict[i] <- 0;
}

for (line in 1:139415) {
  n = table[line,1];
  if (table[line,2]>=1983 && table[line,2]<=2004) {
    dict[[n]] <- ( dict[[n]] + 1 ) ;
  }
}

counter = 0;
for (i in 1:1087) {
  if (dict[[i]]>=264) {
    print(i);
    counter = counter + 1;
  }
}

print(counter)
