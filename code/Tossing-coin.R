# 抽样 Tossing a coin

set.seed(2018)
N = 10000 # 硬币抛掷次数 Tossing a coin 重复 N 次
coin_seq = sample(c(0,1), N, replace = TRUE) # 

# 正面朝上的比例

ratio = cumsum(coin_seq)/seq(1:N)

plot(ratio[1:10]~seq(10), xlab = "# of tosses", ylab = "proportion of heads")
abline(h=0.5)
plot(ratio[1:100]~seq(100), xlab = "# of tosses", ylab = "proportion of heads")
abline(h=0.5)
plot(ratio[1:1000]~seq(1000), xlab = "# of tosses", ylab = "proportion of heads")
abline(h=0.5)
