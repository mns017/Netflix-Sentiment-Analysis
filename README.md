📘 Netflix App Review Sentiment Analysis (2018–2025)
An End-to-End Data Analytics + NLP + Machine Learning + BI Project

This project performs complete data cleaning, NLP preprocessing, sentiment analysis, machine learning modeling, SQL-based analytics, and Power BI dashboarding on 143,000+ real Netflix app reviews collected from Google Play Store between 2018–2025.

The goal is to extract meaningful product insights from user feedback and evaluate app performance trends over time.

🔥 Project Highlights

🧹 Cleaned & processed 143k+ raw user reviews

💬 Performed NLP-based sentiment classification

🤖 Built an ML model using TF-IDF + Logistic Regression

🗄 Imported cleaned dataset into MySQL for SQL analysis

📊 Created a full interactive Power BI dashboard (Netflix-style UI)

🧠 Extracted actionable insights for product improvement

⭐ Used real-world, up-to-date data (2025)

🧬 Tech Stack
Layer	Tools
Programming	Python (Pandas, NumPy, Matplotlib, Sklearn, Regex)
NLP	Text Cleaning, Tokenization, TF-IDF Vectorization
ML Model	Logistic Regression (Sentiment Classification)
Database	MySQL (Data Cleaning, Aggregation, Queries)
BI Dashboard	Power BI (DAX, KPIs, Trend Analysis)
Other	Git, CSV, Data Modeling
📂 Project Workflow
1️⃣ Data Collection & Loading

Dataset: 143,157 Netflix app reviews (Google Play Store)

Loaded using Pandas

Inspected structure, missing values, data types, and duplicates

2️⃣ Data Cleaning (Python)
✔ Removed:

Null values

Duplicate rows

Blank text entries

Irrelevant columns

✔ Cleaned text reviews:

Using custom function:

Lowercasing

Removing URLs

Removing numbers

Removing punctuation

Removing extra spaces

Created new column: clean_review

✔ Created sentiment labels:

Based on review score:

score 1–2 → Negative  
score = 3 → Neutral  
score 4–5 → Positive

3️⃣ NLP + Machine Learning Model
🎯 Vectorization

Used TF-IDF (Term Frequency–Inverse Document Frequency)
Configured with:

max_features = 20,000

ngram_range = (1,2)

English stopwords removed

🤖 Model

Built a Logistic Regression classifier to predict sentiment from review text.

📊 Train/Test Split

80% training
20% testing
Stratified to maintain sentiment balance.

📈 Performance

Accuracy: ~79%

Positive F1: 0.83

Negative F1: 0.85

Neutral F1: 0.07 (expected due to class imbalance)

📉 Confusion Matrix

Shows model strengths & error distribution.

4️⃣ SQL Analysis (MySQL)

The cleaned dataset was exported & loaded into MySQL using SQLAlchemy.

Key SQL queries performed:
✔ Sentiment distribution
✔ Monthly review count trend
✔ App version sentiment analysis
✔ Average rating by sentiment
✔ Filtering unknown values
✔ Time-series grouping:
SELECT DATE_FORMAT(at, '%Y-%m') AS month, sentiment, COUNT(*) 
FROM netflix_reviews
GROUP BY month, sentiment;

✔ App Version Insights

Identified which versions caused spikes in negative reviews.

5️⃣ Power BI Dashboard (Interactive + Netflix Theme)

Final dashboard includes:

⭐ KPI Cards

Total Reviews

% Positive

% Negative

Average Rating

⭐ Visuals

Sentiment Donut Chart

Monthly Trend Line Chart

App Version Sentiment Comparison

Score Distribution (1–5 star)

⭐ Filters (Slicers)

Sentiment

Score

App Version

Date/Month

⭐ Custom UI

Glassmorphism Panels

Netflix Red–Black Gradient Background

Minimal, modern theme

Netflix logo header

📊 Key Insights from Analysis
🔴 Negative sentiment spikes were linked to specific app updates

Versions like 8.114 – 8.116 had the highest complaints.

🟢 Positive reviews increased after UX improvements

Visible improvement during 2020–2021.

⭐ App reviews show extreme polarisation

Most users give 1 star or 5 stars, fewer in the middle.

📅 Higher review activity during lockdown

2020–2021 saw a surge in review volume.

🛑 Major negative topics include:

App crashing, login issues, payment failures, slow performance.

🚀 Future Enhancements

Deploy ML Model as API for real-time sentiment prediction

Build topic modeling (LDA) to identify common complaints

Create automated review monitoring system

Add Power BI bookmarks & navigation

## 📊 Power BI Dashboard (.pbix)
Download the complete Power BI dashboard:  
➡️ [Click Here to Download](https://drive.google.com/file/d/1UVidLSiazrMKdpbLpchZoBvT6yq1SeVB/view?usp=drive_link)

## 📊 DataSet (CSV)
Download the Raw Dataset from Kaggle:  
➡️ [Click Here to Download](https://www.kaggle.com/datasets/ashishkumarak/netflix-reviews-playstore-daily-updated)


💬 If you found this useful, feel free to connect!

Always happy to collaborate on Data Analytics, ML, NLP or Dashboarding projects.

Author: Hani Patel
Linkedin: www.linkedin.com/in/hani-patel-6a9370265
Email: hanipatel0621@gmail.com
