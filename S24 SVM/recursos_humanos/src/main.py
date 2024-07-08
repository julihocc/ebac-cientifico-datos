import os
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.svm import SVC
from sklearn.metrics import accuracy_score
import utils

print("Current Working Directory:", os.getcwd())

df = pd.read_csv("./data/recursos_humanos.csv")

X = df.drop(columns=["left", "number_project"], axis=1)
y = df["left"]

X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.2, random_state=42
)

preprocess = utils.preprocessing_pipeline(
    X_train, categorical_variables=["sales", "salary"], target="left"
)


X_train_transformed = preprocess.transform(X_train)

print(X_train_transformed)


kernels = ["linear", "poly", "rbf", "sigmoid"]

trained_models = []

confusion_matrices = []

class_reports = []

for kernel in kernels:
    cm, cr, trained_model = utils.evaluate_model_kernel(
        SVC(kernel=kernel, random_state=42), 
        X_train_transformed, 
        y_train, 
        preprocess.transform(X_test), y_test
    )
    confusion_matrices.append(cm)
    class_reports.append(cr)
    trained_models.append(trained_model)
    
best_model, best_score = utils.get_best_model(
    trained_models, 
    accuracy_score, 
    preprocess.transform(X_test), 
    y_test
)

print(best_score)