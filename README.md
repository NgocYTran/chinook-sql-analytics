# chinook-sql-analytics
## 1. Purpose
Chinook is a digital media store, and this project uses its dataset to analyze customer behavior and sales performance. The analysis focuses on understanding how products perform, how customers engage with the store, and how sales patterns vary across levels such as track, country, and artist. The goal of this project is to identify meaningful patterns that can support data-driven business decision-making.

---
## 2. Dataset
**Source**
>[Chinook sample database](https://github.com/lerocha/chinook-database)

The Chinook database represents a digital music store, where customers purchase individual tracks through the invoice table. Each invoice records a completed transaction, and the track table represents individual songs available for purchase.

**Key Tables Used**:
   * customer
   * invoice
   * invoiceline
   * track
   * album
   * artist
   * mediatype
---
## 3. Business Questions
The business questions asked include:
   * Which tracks drive the majority of sales?
   * Are there differences in customer engagement depth?
   * How does average spending per transaction vary across countries?

---
## 4. Analytical Approach
This analysis examined sales and customer behavior by connecting transaction data with product and customer information. Track- and invoice-level data were aggregated to identify top-selling tracks and evaluate whether certain products present opportunities for promotion or pricing adjustments. Revenue was also analyzed by media type to understand customer format preferences and identify formats that contribute minimally to overall sales.

At the customer level, purchasing behavior across multiple genres was analyzed to assess engagement depth and potential eligibility for loyalty programs. In addition, customers with no recorded purchases were identified to explore possible onboarding or retention issues within the Chinook customer base.

At the transactional level, artist sales performance was evaluated using total revenue to assess relative popularity and identify opportunities to expand content offerings from high-performing artists. This pattern is further supported by track sales results, which show that a small subset of tracks accounts for a disproportionate share of total units sold.

This analysis was extended to a broader geographic level by comparing each country’s average invoice total with the overall average invoice value to understand differences in per-transaction spending behavior. These insights can inform business decisions such as prioritizing advertising efforts or offering bundled products in markets with stronger spending patterns.

---
## 5. Key Findings & Interpretation
Customer behavior analysis shows no evidence of customers who have never made a purchase, as all customers in the dataset have completed at least one transaction. As a result, the dataset does not capture customer behavior prior to purchase. Therefore, analysis should focus on differences in engagement depth to better understand variations in purchasing behavior rather than initial conversion, with the goal of encouraging deeper customer engagement.

Revenue concentration across artists and tracks reveals a highly sparse sales distribution, where most tracks are purchased only once or at most twice. As a result, many tracks share the same total units sold, which reduces the differentiation and reliability of ranking-based analyses such as identifying the “top 10” tracks. Consequently, these rankings are best interpreted as illustrative rather than definitive, and more meaningful insights emerge when sales performance is aggregated at higher levels, such as artists or geographic markets.

Lastly, although some countries have higher average invoice values than others, the differences are small, suggesting limited variation in per-transaction spending across countries.

---
## 6. Conclusion
This analysis provides clearer insights by examining sales data at different levels and understanding the limitations of the dataset. Customer behavior is better explained by how engaged customers are after their first purchase rather than by whether they purchased at all. Overall, the results suggest that focusing on broader patterns instead of highly detailed rankings leads to more useful insights for data-driven business decision-making.




