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


def plot_confusion_matrix(confusion_matrix, model_label=""):
    cm_df = pd.DataFrame(
        confusion_matrix,
        index=["Actual Negative", "Actual Positive"],
        columns=["Predicted Negative", "Predicted Positive"],
    )
    plt.figure(figsize=(8, 6))
    sns.set(font_scale=1.2)
    heatmap = sns.heatmap(cm_df, annot=True, fmt="d", cmap="Blues", cbar=False)
    plt.title(f"Confusion Matrix - {model_label}", fontsize=14)
    plt.xlabel("Predicted Label", fontsize=12)
    plt.ylabel("True Label", fontsize=12)
    return heatmap


def get_best_model(fitted_models, metric, X_test, y_test):
    best_score = float("-inf")
    best_model = None
    for model in fitted_models:
        y_pred = model.predict(X_test)
        score = metric(y_test, y_pred)

        if score > best_score:
            best_score = score
            best_model = model

    return best_model, best_score
