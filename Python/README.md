# Introduction
[Samsung Global Product Sales Dataset](https://www.kaggle.com/datasets/ashyou09/samsung-global-product-sales-dataset/data) will be used for this data analysis projects. This dataset  simulates a realistic global sales ledger for Samsung Electronics products.It spans flagship foldables to budget smartphones, smart home devices, and accessories.

This dataset consist of 15,500 synthetic sales transactions for various products across all regions, 52 countries, 555+ cities, from 2021 to 2024, making it sufficient for data analysis, such as taking business insights, uncover trends and patterns, hypothesis or A/B testing, machine learning, etc.

# Exploratory Data Analysis
### 1. 
![EDA_1.png](Images/EDA_1.png)
#### Insights
- The Samsung Galaxy S series is the most popular Samsung lineup among Gen Z in Asia, indicating that this segment prefers the Galaxy S series over other Samsung series in the region.

- The Samsung Galaxy Z series is the least preferred among Gen Z in Asia, suggesting that certain limitations or drawbacks may make the series less appealing to buyers.

### 2. 
![EDA_2](Images/EDA_2.png)
#### Insights
- Cream, Awesome Lime, Graph, and Lavender are the most popular colors chosen by Gen Z in Asia, suggesting that the company should prioritize offering these colors in future products.

- Awesome-type colors show high popularity among Gen Z in Asia, indicating that these designs align well with their aesthetic preferences.

- Gray and Graphite are the least preferred colors among Gen Z in Asia, suggesting that these colors are less attractive for this segment when choosing a smartphone.

### 3. 
![EDA_3](Images/EDA_3.png)

#### Insights
- The plot indicates that Gen Z in Asia predominantly purchase smartphones through offline stores, as offline channels show higher values compared to online channels.

- Online purchasing channels show lower preference, which may indicate lingering concerns regarding product authenticity, safety, or purchasing reliability.

### 4. 
![EDA_4](Images/EDA_4.png)
#### Insights
- Gift cards dominate as the most used payment method, highlighting strong preference for convenience-driven and controlled spending options.

- EMI and BNPL show solid adoption, indicating demand for flexible financing among Gen Z.

- Credit cards lag behind other methods, suggesting lower relevance or adoption among younger consumers in Asia.

### 5. 
![EDA_5_a](Images/EDA_5_a.png)

![EDA_5_b](Images/EDA_5_b.png)

#### Insights
- Gen Z in Asia tend to prefer smartphones equipped with 5G features, suggesting that this generation is more tech-savvy and forward-looking in adopting newer technologies.

- 5G smartphones show a wider and higher revenue distribution compared to non-5G devices, with several high-value outliers, indicating that 5G models tend to generate greater revenue.

### 6. 
![EDA_6](Images/EDA_6.png)

#### Insights
- For non-5G products, the Samsung Galaxy A series records the highest units sold compared to the M and S series. This may indicate that factors such as useful features and relatively lower prices make the Galaxy A series more attractive to Gen Z consumers in Asia.

- For 5G products, the Samsung Galaxy S series achieves the highest units sold compared to the A, M, and Z series, suggesting that Gen Z may consider additional factors beyond just 5G capability when deciding which smartphone series to purchase.

- The Samsung Galaxy Z series does not offer non-5G variants, which may partly explain its relatively lower sales compared to other series.

### 7. 
![EDA_7](Images/EDA_7.png)

#### Insights
- Samsung Galaxy S and Z generate the highest revenue, indicating that these series either attract a larger number of customers and/or have higher unit prices, making them more suitable for mid-to-high spending consumers.

- Samsung Galaxy A and M generate relatively lower revenue, suggesting that these products are generally priced more affordably for lower-spending consumers, although they contribute less revenue per unit.

- Smartphones with the highest storage capacity tend to generate relatively low revenue, except for the Galaxy A series, suggesting that many Gen Z consumers in Asia may be less interested in high-storage variants due to factors such as higher prices, lower perceived value, or sufficient satisfaction with lower storage capacity.

### 8.
![EDA_8_a](Images/EDA_8_a.png)
![EDA_8_b](Images/EDA_8_b.png)

#### Insights
- The highest sales and AOV frequencies are observed in the USD 100-450 and USD 650-1,200 price ranges, highlighting strong consumer demand for low and mid-range smartphones in Asia.

- Premium smartphones priced between USD 1,500-1,900 exhibit significantly lower sales and AOV frequencies, indicating that demand for high-end devices is relatively limited.

### 9.
![EDA_9](Images/EDA_9.png)

#### Insights
- Revenue showed a strong increase from 2021 to 2022, reaching its peak in 2022, indicating a period of strong product performance and effective marketing.

- Revenue declined slightly after 2022, though the decrease was not substantial, which may indicate several possible factors such as shifting consumer preferences toward competitors, longer smartphone replacement cycles, or less effective product launches and promotional strategies.

### 10. 
![EDA_10](Images/EDA_10.png)

#### Insights
- AOV for 5G smartphones shows a fluctuating trend between 2021 and 2024, indicating periodic spikes in purchasing activity driven by product launches or shifts in consumer interest.

- Significant AOV spikes are commonly observed at the beginning or end of quarters, potentially linked to product release schedules or promotional campaigns.

### 11. 
![EDA_11](Images/EDA_11.png)

#### Insights
- Galaxy S recorded the highest revenue peak in April 2021, highlighting strong market performance at that time because this series offer more than its competitor, leads to shifting preference of Gen Z in Asia.

- Galaxy Z shows stronger revenue performance toward the end of the year, suggesting increasing consumer interest in premium or innovative smartphone designs.

- Galaxy A and M series generate comparatively lower revenue, reflecting their positioning in the lower to mid-range market segment, also competitor offering more than this series at mid-range market.

### 12. 
![EDA_12](Images/EDA_12.png)

#### Insights
- Samsung's return rates show a consistent increase from 2021 to 2024, which may indicate growing product issues or increasing customer dissatisfaction as Gen Z consumers develop higher expectations for smartphone performance and quality.

- The Samsung Galaxy Z series records the highest return rate among all series, suggesting potential factors such as product issues, unmet customer expectations, or higher return behavior within this segment.

- The Samsung Galaxy A series has the lowest return rate, indicating that these products may better meet customer expectations or experience fewer issues compared to other series.

- Smartphones with 64 GB storage show the highest return rate, which may suggest that many Gen Z consumers require larger storage capacity, leading to higher return rates.

### 13. 
![EDA_13](Images/EDA_13.png)

#### Insights
- Online channels appear to be an efficient revenue driver, generating strong revenue with relatively fewer transactions.

- Corporate/B2B sales represent a key revenue contributor due to high-volume purchasing behavior.

- Samsung stores may rely on premium product sales to generate high revenue despite lower transaction volumes.

- Other offline stores record high order volumes but relatively low revenue, suggesting lower-priced products, smaller average order values per transaction, or or heavier promotional activities.

# Hypothesis Testing
### 1. Do Higher Discounts Lead to Higher Units Sold for 5G Products in Asia?

T-Statistic : -0.4858528028330892
P-Value : 0.6271785064597991

Can't Reject H0: There's no significant difference between Low Discount and High Discount Group

Standard Error : 0.12813074432205848
Degree of Freedom : 995
t-value : 1.962351030264214
Margin of Error : 0.25143749812891203
Mean Difference: 0.06305282424552017
95% Confidence Interval : [-0.18838467388339186, 0.3144903223744322]
Effect Size : 0.03165068052598687

![HT_1](Images/HT_1.png)

#### Insights
- There's no statistically significant difference between the low-discount and high-discount groups, suggesting that higher discounts do not appear to be associated with increased units sold for 5G products in Asia.
- The 95% confidence interval for the mean difference ranged from -0.19 to 0.32, which includes zero, further suggesting that there is insufficient evidence to conclude that higher discounts lead to higher sales.
- The effect size was extremely small (Cohen's d = 0.03), suggesting that the practical impact of higher discounts on unit sales is negligible.

### 2. Does Sales Channel Type Affect Revenue?
##### Hypothesis Testing of Revenue based on Sales Channel Type Globally

T-Statistic : 0.8611468053418565
P-Value : 0.38920336173296555

Standard Error : 59.923868118566574
Degree of Freedom : 4472
t-value : 1.960494597801946
Margin of Error : 117.48041972584602
Mean Difference: -50.8500576490635
95% Confidence Interval : [-168.33047737490952, 66.63036207678252]
Effect Size : -0.028664771263266674

##### Hypothesis Testing of Revenue based on Sales Channel Type in South America Region

T-Statistic : -1.4883558011524023
P-Value : 0.1374276854834592

Standard Error : 151.70488211927565
Degree of Freedom : 409
t-value : 1.9657810689090571
Margin of Error : 298.2185853311522

Mean Difference: 288.80449458707085
95% Confidence Interval : [-9.414090744081363, 587.0230799182231]

Effect Size : 0.16781269930646048




##### Hypothesis Testing of Revenue based on Sales Channel Type in Oceania Region

T-Statistic : -1.0147168868712189
P-Value : 0.3116258567211815

Standard Error : 290.0683756594781
Degree of Freedom : 177
t-value : 1.9734572015895642
Margin of Error : 572.4375248985841

Mean Difference: 315.2139042277827
95% Confidence Interval : [-257.22362067080144, 887.6514291263668]

Effect Size : 0.16279987243729965




##### Hypothesis Testing of Revenue based on Sales Channel Type in Europe Region

T-Statistic : -0.26173279017862877
P-Value : 0.7935617690443377

Standard Error : 105.9939118404056
Degree of Freedom : 1571
t-value : 1.9614751677938782
Margin of Error : 207.90442601228912

Mean Difference: 27.389744352928346
95% Confidence Interval : [-180.51468165936078, 235.29417036521747]

Effect Size : 0.01479622099336552




##### Hypothesis Testing of Revenue based on Sales Channel Type in Asia Region

T-Statistic : 2.493980541584624
P-Value : 0.012758627519288688

Standard Error : 117.82610826749153
Degree of Freedom : 1267
t-value : 1.9618380970304774
Margin of Error : 231.1557480240026

Mean Difference: -271.66737565133553
95% Confidence Interval : [-502.82312367533814, -40.51162762733293]

Effect Size : -0.15517699823373624




##### Hypothesis Testing of Revenue based on Sales Channel Type in North America Region

T-Statistic : -0.4790775716388183
P-Value : 0.6322683635179973

Standard Error : 254.76840050598196
Degree of Freedom : 272
t-value : 1.9687238473650965
Margin of Error : 501.5686256311886

Mean Difference: 106.29967304625188
95% Confidence Interval : [-395.2689525849367, 607.8682986774404]

Effect Size : 0.06464601068480307




##### Hypothesis Testing of Revenue based on Sales Channel Type in Africa Region

T-Statistic : 1.8218586055883499
P-Value : 0.06919093592200706

Standard Error : 176.29202338456753
Degree of Freedom : 418
t-value : 1.9656554636525445
Margin of Error : 346.5293789642373

Mean Difference: -317.8746333333336
95% Confidence Interval : [-664.404012297571, 28.654745630903733]

Effect Size : -0.1967832201996836




##### Hypothesis Testing of Revenue based on Sales Channel Type in Europe/Asia Region

T-Statistic : 0.0030433964638594685
P-Value : 0.9975752110960752

Standard Error : 254.9111455829317
Degree of Freedom : 174
t-value : 1.9736914397514558
Margin of Error : 503.1159459342694

Mean Difference: -0.7812878431366244
95% Confidence Interval : [-503.89723377740603, 502.3346580911328]

Effect Size : -0.0005056788283015743




##### Hypothesis Testing of Revenue based on Sales Channel Type in Middle East Region

T-Statistic : -0.3174725880955283
P-Value : 0.7512746259122736

Standard Error : 292.2991382411164
Degree of Freedom : 170
t-value : 1.9740167076257822
Margin of Error : 577.003382512582

Mean Difference: 102.18314102564159
95% Confidence Interval : [-474.8202414869404, 679.1865235382236]

Effect Size : 0.052708197072444556


![HT_2](Images/HT_2.png)

#### Insights
- Overall, there's no statistically significant difference in revenue between online and offline sale channels globally (p-value = 0.389 > 0.05).
- The 95% confidence interval for the mean difference (Offline - Online) is [-168.33, 66.63], which includes zero, indicating no significant difference.
- The effect size is very small (Cohen's d = -0.028), suggesting a negligible practical impact of sales channel type on revenue at a global level.


However, when looking at the Asian region:
- In contrast, a statistically significant difference in revenue is observed between sales channels in the Asian region (p-value = 0.0127 < 0.05).
- The mean difference in revenue (Offline - Online) for Asia is -271.67 USD. The 95% confidence interval is [-502.82, -40.51], which does not include zero. This suggests that, in the Asian market, online sales channels tend to generate significantly higher revenue per sale compared to offline channels.
- However, the effect size is small (Cohen’s d = -0.155), suggesting that while the difference is statistically significant, the practical impact is relatively modest.

While for the remaining regions:
- The p-values are greater than 0.05 and the confidence intervals include zero, suggesting that there is no statistically significant difference in revenue between online and offline sales channels in those markets.

# Machine Learning
## Regression
### Linear Regression
### Predict/Forecast Revenue
![LI_R_1](Images/LI_R_1.png)

![LI_R_2](Images/LI_R_2.png)
#### Insights
- The model shows strong performance in low-to-mid revenue ranges (≤ USD 6,500), where predictions closely follow the ideal line.

- However, it systematically underestimates high-revenue observations (> USD 6,500), indicating poor generalization for high-value transactions.

- The prediction ceiling at around USD 4,500 suggests model constraints, likely due to limited feature representation.

- Visible clustering patterns in the scatter plot indicate that predictions are driven by discrete feature groupings, rather than continuous variation.


![LI_R_3](Images/LI_R_3.png)
#### Insights
- Positively correlated features (e.g., storage capacity, sales channel, and customer demographics) play a key role in driving revenue, highlighting potential areas for strategic focus.

- Negatively correlated features may indicate underperforming aspects of the product or strategy, which should be reviewed and optimized to enhance overall revenue performance.


## Classification
### Logistic Regression
#### Return Prediction
![LO_R_1](Images/LO_R_1.png)

#### Insights
- The model is able to identify 66 return cases, showing that it has learned patterns related to product returns.

- However, it misses 72 actual return cases, meaning that nearly half of the returns are not detected. This indicates that the model’s recall for return prediction is still limited.

- A major issue is the high number of false positives (336 cases), where the model predicts a return but the product was not actually returned.

- As a result, the precision for return prediction is very low (~16%), meaning most predicted returns are incorrect.

![LO_R_2](Images/LO_R_2.png)

#### Insights
- Higher return probability is associated with Galaxy Z purchases, 5G devices, online channels, and prior iOS users, indicating potential expectation gaps or product experience issues.

- Lower return probability is linked to budget devices with higher storage and non-iOS users, suggesting stronger product-market fit and user satisfaction within this segment.
