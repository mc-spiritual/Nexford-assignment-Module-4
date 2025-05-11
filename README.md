# Nexford-assignment-Module-4
# Netflix Dataset Analysis

## 📝 Overview
This Jupyter Notebook presents an in-depth analysis of a Netflix dataset, covering steps from **data cleaning** and **exploration** to **visualization**. The dataset includes valuable information about **movies** and **TV shows**, such as `title`, `genres`, `release_year`, `ratings`, `duration`, `cast`, and `country`.

---

## 🔧 Prerequisites

Before running the notebook, ensure you have the following Python libraries installed:

- `pandas`
- `matplotlib`
- `seaborn`
- `wordcloud`

Install them via pip:

```bash
pip install pandas matplotlib seaborn 
```

---

## 📂 Project Structure

### 1. **Library Installation and Import**
- Essential libraries (`pandas`, `matplotlib`, `seaborn`, `wordcloud`) are imported to handle data and generate visualizations.
- Checks are performed to ensure successful installation.

### 2. **Dataset Loading and Initial Exploration**
- The dataset is loaded using `pd.read_csv()` into a DataFrame named `Netflix_shows_movies`.
- Previewed with `.head()` and summarized using `.info()` to inspect structure and data types.

### 3. **Data Cleaning**
- Missing values identified via `.isnull().sum()`.
- `date_added` converted to datetime.
- New columns `day_added` and `month_added` extracted.
- Rows with missing essential data dropped using `.dropna()`.

### 4. **Data Exploration**
- Dataset size reviewed with `.shape`.
- Duplicate records checked using `.duplicated().sum()`.
- Oldest entries identified using `release_year`.
- Unique values explored with `.nunique()` and `.value_counts()`.

### 5. **Content Analysis**
- Distribution of content types (`Movie` vs `TV Show`) analyzed.
- Most common ratings and top 10 content-producing countries highlighted.
- Release year distribution studied.
- `duration` field converted for numeric analysis and mean duration computed.

### 6. **Genre Analysis**
- `listed_in` column tokenized to extract individual genres.
- Genre frequency counted using `collections.Counter`.
- A new DataFrame created to store and visualize genre data.

### 7. **Visualizations**
Multiple plots provide key insights:

- 📊 **Most Watched Genres** — Bar plot using `seaborn` and `matplotlib`.
- 🎬 **Ratings Distribution** — Bar plot of `rating` values.

### 8. **Top Actors and Countries**
- Top 10 actors with most appearances stored in `cast_df`.
- Top 10 countries with most titles produced visualized and ranked.


## ✅ Summary

This analysis provides:
- Cleaned and structured Netflix data
- Rich visual insights on genres, ratings, and countries
- Frequency analysis of actors and countries

📌 **Conclusion:**  
The project highlights viewer preferences, production trends, and content characteristics across Netflix’s media catalog — offering a strong base for recommendation systems or deeper audience analysis.
