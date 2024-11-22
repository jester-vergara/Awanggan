param (
    [string]$TargetAccount = "control-tower", # Default to "control-tower"
    [string]$SessionName = "LocalTerraformSession"
)

# Role ARN mapping for each account
$RoleArns = @{
    "control-tower" = "arn:aws:iam::571600861891:role/GitHubAssumeRoleAwanggan"
    "shared"        = "arn:aws:iam::961341517694:role/GitHubAssumeRoleAwanggan"
}

# Validate the target account
if (-not $RoleArns.ContainsKey($TargetAccount)) {
    Write-Error "Invalid account: $TargetAccount. Valid options are: $($RoleArns.Keys -join ', ')"
    exit 1
}

# Get the role ARN for the target account
$RoleArn = $RoleArns[$TargetAccount]

Write-Host "Assuming role for account: $TargetAccount"
Write-Host "Role ARN: $RoleArn"
Write-Host "Session Name: $SessionName"

try {
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
} catch {
    Write-Error "Failed to assume role for account: $TargetAccount"
    Write-Error $_.Exception.Message
}
