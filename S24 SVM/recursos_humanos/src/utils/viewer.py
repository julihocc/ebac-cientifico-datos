import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns


def plot_confusion_matrix(confusion_matrix, model_label=""):
    cm_df = pd.DataFrame(
        confusion_matrix,
        index=["Actual Negative", "Actual Positive"],
        columns=["Predicted Negative", "Predicted Positive"],
    )
    plt.figure(figsize=(8, 6))
    heatmap = sns.heatmap(cm_df, annot=True, fmt="d", cmap="Blues", cbar=False)
    plt.title(f"Confusion Matrix - {model_label}", fontsize=14)
    plt.xlabel("Predicted Label", fontsize=12)
    plt.ylabel("True Label", fontsize=12)
    return heatmap
