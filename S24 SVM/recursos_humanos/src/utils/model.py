from sklearn.metrics import confusion_matrix, classification_report
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns


def create_classification_report(model, X, y):

    y_pred_report = model.predict(X)
    cm_report = confusion_matrix(y, y_pred_report)
    cr_report = classification_report(y, y_pred_report)

    return cm_report, cr_report


def evaluate_model_kernel(model, X_train, y_train, X_test, y_test):

    model.fit(X_train, y_train)
    svc_cm, svc_cr = create_classification_report(model, X_test, y_test)
    return svc_cm, svc_cr, model


def get_best_model(fitted_models, metric, X_test, y_test):
    best_score = float("-inf")
    best_model = None
    best_model_name = ""
    for label, fitted_model in fitted_models.items():
        y_pred = fitted_model.predict(X_test)
        score = metric(y_test, y_pred)

        print(f"{label} score: {score}")

        if score > best_score:
            best_score = score
            best_model = fitted_model
            best_model_name = label

    return best_model_name, best_model, best_score
