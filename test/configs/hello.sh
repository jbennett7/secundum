aws cloudformation create-stack \
    --stack-name Hello \
    --template-body file://${1} \
    --parameters \
        ParameterKey=EnvironmentName,ParamaterValue=DevOpsProfessional,\
        ParameterKey=ApplicationName,ParameterValue=Hello,\
        ParameterKey=InputBucket,ParameterValue=jbennettconsulting,\
        ParameterKey=InputKey,ParameterValue=codebuild.zip,\
        ParameterKey=ArtifactBucket,ParameterValue=jbennettconsulting,\
        ParameterKey=ArtifactPath,ParameterValue=artifacts,\
        ParameterKey=ArtifactKey,ParameterValue=hello.out \
    --capabilities CAPABILITIES_NAMED_IAM
