from sklearn.preprocessing import StandardScaler, OneHotEncoder
from sklearn.compose import ColumnTransformer
from sklearn.pipeline import Pipeline


def preprocessing_pipeline(
    X, categorical_variables=[], target=None, kernel="linear", random_state=42
):

    categorical_preprocessor = OneHotEncoder(drop="first")

    preprocessor = ColumnTransformer(
        transformers=[
            ("cat", categorical_preprocessor, categorical_variables),
        ],
        remainder="passthrough",
    )

    pipeline = Pipeline(
        steps=[
            ("preprocessor", preprocessor),
            ("scaler", StandardScaler()),
        ]
    )

    pipeline.fit(X)

    return pipeline
