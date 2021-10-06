# Analytics-using-python-

Assignment 1: Classification of Bad Loans:

A lending institution, Cautious plc is into the business of offering credit to individuals. The lending institution has recently compiled data on its existing customers. The institution wishes to develop a classification model for predicting defaults on scheduled loan payments by its customers. In this project, the aim is to build a model for classification of bad loans to enable the lending institution to take suitable actions when it comes to identifying customers, who are likely to default on their scheduled loan payments and consequently, reduce the loss of revenue.

Please check below the summary of objectives and major findings of this assignment:

1. Analyzed the data of a lending institution to predict the default likelihood on loans by classification into 2 categories - good and bad loans.

2. Identified patterns in the data and relations between the features and the label by studying line plots, histograms, cross tables, correlation, and count plots. Checked the relation between loan amount, loan duration, and instalment rate using plots.

3. Compared the factors considered vital in the existing industry practices versus features in the dataset for classification of bad loans to infer the incompleteness of the given dataset and lack of proper justification for making the claims about default likelihood in the label of dataset.

4. Made important observations about imbalanced misclassification costs attributed to incorrect prediction of bad versus good loans. Also tackled issues such as inconsistent information, high cardinality values, and choice of suitable metric for evaluation of classification.

5. Employed a cost-sensitive learning approach that involved a combination of SMOTE (Synthetic Minority Oversampling Technique) to oversample from minority class (bad loans) and ENN (Edited Nearest Neighbors) to undersample from majority class (good loans) for building a classification model. Evaluated the model using F2 score metric for assigning greater weightage to recall or sensitivity than to precision for better prediction of bad loans.

*****************************************************************************************************************************************************************************

Assignment 2: ETL operations on Unstructured Sensor Data 

1. Performed ETL (Extract, Transform and Load) operations in Python as part of analysis of the accelerometer sensor data for carrying out gesture recognition of users.  

2. Extracted the sensor data from distinct text files containing information about 20 gestures (each gesture repeated 20 times) performed by each of the 8 users. 

3. Transformed the sensor data extracted from each of 3200 text files by reading each of the x, y, and z coordinates respectively or sequence of movements constituting a gesture as a column-major flattened array. 

4. Compiled the transformed data and loaded it to the csv file for further analysis and classification of gestures. 

*****************************************************************************************************************************************************************************

Assignment 3: Clustering Problem - Customer Segmentation in Airlines

1. Segmented FFP (Frequent Flyer Program) customers of an airline by using K-means clustering and assessed optimal number of clusters or K value by elbow plots. 

2. Presented problems in increasing airline's FFP enrollments from customer segmentation in given data by root cause analysis, including contributing external factors, insufficient FFP enrollment duration, and absence of airline's rewards criteria details to understand the flying behavior of FFP customers. 

3. Identified problems with insufficient information in the dataset pertaining to whether the recently enrolled FFP customers are related to the earlier enrolled customers that could result in marketing programs to not serve their intended purpose. 

4. Made an observation that flying behavior of FFP customers could be properly determined when a customer has enrolled for considerable duration and has not enrolled for less number of days as given in one of the features in the dataset.  

5. Used 25th, 50th and 75th percentile values in feature with values of enrollment duration in years to create a categorical feature with description about year range corresponding to the value given in feature of enrollment duration. Studied patterns and relations between this categorical feature and other features in the dataset 
by using cross tables and libraries such as Matplotlib and Seaborn for visualization of data. 

6. Created pair plots of clusters for checking the segmentation of data into groups.

******************************************************************************************************************************************************************************

Assignment 4: Classification of outcomes of a bank’s marketing campaign 

Analyzed the data of a bank’s marketing campaign with the objective of predicting whether there is a subscription to deposit or not as a consequence of that campaign.  

Findings:

1. Made an important finding that around 64% of the subscribers of deposits, who were contacted in the existing marketing campaign were not contacted in the previous campaign. 
This finding suggests that the purpose of features given in the dataset is defeated as incoherent relation is found between the previous and later marketing campaign. 
If coherent relations were present, they could have allowed for better comparison of the outcomes of two campaigns and study of relative effectiveness of campaigns. 

2. Deciphered patterns in the data and dependencies between features by using cross tables, correlations, statistical tests, and visualization techniques 
in Python.  

3. Employed logistic regression algorithm for classification of likely subscribers and non-subscribers of deposits post the marketing campaign. 
Plotted ROC-AUC curve using different classification threshold values to obtain the AUC (area under the curve). 

*****************************************************************************************************************************************************************************

KAGGLE COMPETITION: Regression Problem - Prediction of insurance amount

Aced problem on prediction of insurance amount by using mutual information to check dependencies and 
permutation based feature importance in Random Forest Regressor to rank features and identify overfitting of the model. 

*****************************************************************************************************************************************************************************

Assignment - Analysis of Chinook Database using MySQL

*****************************************************************************************************************************************************************************

© 2021 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
