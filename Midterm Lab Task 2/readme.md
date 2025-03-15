# Midterm Lab task 2 - Data Cleaning and Transformation using POWER QUERY

## Task Overview

## Part 1 Data Cleaning

### 1. Load the Dataset
- Downloaded the `Uncleaned_DS_jobs.csv` dataset.
- Loaded the data into Excel using **Data** > **New Query** > **Open File** > **Text/CSV**.

### 2. Data Cleaning

### 3. **Salary Estimate Column**
- Removed all characters after the opening parenthesis in the `Salary Estimate` column using the **Transform** menu > **Extract** > **Text Before Delimiter** and specifying `(` as the delimiter.

#### 4. **Create Min and Max Salary Columns**
- Created two new columns: `Min Sal` and `Max Sal`.
- Used the **Column from Examples** feature and manually entered values to separate the minimum and maximum salary.

#### 5. **Add Role Type Column**
- Created a **Custom Column** to categorize job titles into five groups: **Data Scientist**, **Data Analyst**, **Data Engineer**, **Machine Learning Engineer**, and **Other** based on keywords in the `Job Title` column.

#### 6. **Split Location Column**
- Used a **Custom Column** to correct inconsistencies in the `Location` column, mapping specific locations to their corresponding abbreviations (e.g., “California” to “, CA”).
- Applied **Split Column by Delimiter** to split the corrected `Location` column.

#### 7. **Handle Negative Values**
- Filtered out negative values from columns such as `Competitors`, `Revenues`, and `Industry` to clean the dataset.

#### 8. **Remove Unnecessary Columns**
- Removed unnecessary columns, such as `Descriptions`, and cleaned up company names by removing rate-related suffixes.

## Part 2 Transformation 

#### 1. **Group Data by Role Type**
- Created a duplicate of the raw data and focused on grouping salaries by **Role Type**.
- Selected relevant columns: `Role Type`, `Min Sal`, and `Max Sal`, changed the data type for salary columns to **Currency**, and multiplied the salary columns by 1000.
- Grouped the data by **Role Type** to calculate average salaries for each role.

#### 2. **Group Data by Company Size**
- Created a reference to the raw data and selected the columns: `Size`, `Min Sal`, and `Max Sal`.
- Applied similar transformations (multiplied salary columns by 1000) and grouped the data by **Company Size** to calculate average salaries.

#### 3. **Map State Abbreviations to Full State Names**
- Merged the raw data with a **State Mapping** file to map state abbreviations to full state names.
- Filtered out null or blank values in the state abbreviation column.

#### 4. **Group Data by State**
- Created a reference of the raw data, focusing on grouping by **State Full Name**.
- Applied similar steps: selected the necessary columns, transformed salary columns, multiplied by 1000, and grouped by **State Full Name** to calculate average salaries for each state.

### 5. Final Queries and Results
- Ensured the final queries included:
  - `Sal By Role Type – dup`
  - `Sal By Size ref`
  - `State`
  - `Sal By State ref`
  - `Uncleaned DS Jobs`
- These queries provided insights into salaries by job role, company size, and state.

### Conclusion
- The project demonstrates the application of data cleaning and transformation techniques in Power Query Editor to extract insights from a raw dataset. The final queries addressed key business questions related to job roles, company sizes, and salary distribution by state.

# Output Overview:

## Uncleaned Data
![Uncleaned Data](IMAGE/Uncleaned%20Data.PNG)

## Cleaned data
![Cleaned Data](IMAGE/Cleaned%20Data.PNG)

## Sal by Role Type
![Sal By Role Type](IMAGE/Sal%20By%20Role%20Type%20dup.PNG)

## Sal By Size Ref
![Sal By Size Ref](IMAGE/Sal%20By%20Role%20Size%20ref.PNG)

## Sal by size
![Sal By State Ref](IMAGE/Sal%20By%20State%20ref.PNG)

## Query Dependencies
![Query Dependencies](IMAGE/Query%20Dependencies.PNG)
