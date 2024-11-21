# Role ARN
$RoleArn = "arn:aws:iam::571600861891:role/GitHubAssumeRoleAwanggan"
$SessionName = "LocalTerraformSession"

# Assume the role
$AssumeRoleResponse = aws sts assume-role `
    --role-arn $RoleArn `
    --role-session-name $SessionName `
    --output json

# Parse the credentials
$AccessKeyId = ($AssumeRoleResponse | ConvertFrom-Json).Credentials.AccessKeyId
$SecretAccessKey = ($AssumeRoleResponse | ConvertFrom-Json).Credentials.SecretAccessKey
$SessionToken = ($AssumeRoleResponse | ConvertFrom-Json).Credentials.SessionToken

# Export credentials for Terraform
$env:AWS_ACCESS_KEY_ID = $AccessKeyId
$env:AWS_SECRET_ACCESS_KEY = $SecretAccessKey
$env:AWS_SESSION_TOKEN = $SessionToken

Write-Host "Temporary AWS credentials have been set for this session."
