from sklearn.preprocessing import StandardScaler, OrdinalEncoder, KBinsDiscretizer
from sklearn.compose import ColumnTransformer
from sklearn.pipeline import Pipeline 


def create_preprocessing_pipeline(
    categorical_variables, numerical_variables
):

    categorical_preprocessor = OrdinalEncoder()
    
    numerical_preprocessor = StandardScaler()

    preprocessor = ColumnTransformer(
        transformers=[
            ("cat", categorical_preprocessor, categorical_variables),
            ("num", numerical_preprocessor, numerical_variables),
        ],
        remainder="passthrough",
    )

    pipeline = Pipeline(
        steps=[
            ("preprocessor", preprocessor),
        ]
    )


    return pipeline
