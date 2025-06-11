#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

?round()
mean()
max()
min()

###profit for each month
profit = revenue - expenses
profit

#profit after tax for each month (the tax rate is 30%)
tax = round(0.3 * profit,2)
tax
PAT = profit - tax
PAT

#profit margin for each month - equals to profit a after tax divided by revenue
profitmargin = round(PAT / revenue,2)*100
profitmargin

#good months - where the profit after tax was greater than the mean for the year
meanyear = mean(PAT)
goodmonths = PAT > meanyear
goodmonths

#bad months - where the profit after tax was less than the mean for the year
badmonths = PAT < meanyear
badmonths = !goodmonths
badmonths

#the best month - where the profit after tax was max for the year
bestmonth = PAT == max(PAT)
bestmonth

#the worst month - where the profit after tax was min for the year
worstmonth = PAT == min(PAT)
worstmonth