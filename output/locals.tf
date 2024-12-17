locals {
  vpcs = {
    "us-east-1_alpha" = {
      region = "us-east-1"
      cidr   = "11.0.0.0/15"
      tags   = {"Name": "us-east-1_alpha"}
    }
    "us-east-1_beta" = {
      region = "us-east-1"
      cidr   = "11.2.0.0/15"
      tags   = {"Name": "us-east-1_beta"}
    }
    "us-east-1_gamma" = {
      region = "us-east-1"
      cidr   = "11.4.0.0/15"
      tags   = {"Name": "us-east-1_gamma"}
    }
    "us-east-1_delta" = {
      region = "us-east-1"
      cidr   = "11.6.0.0/15"
      tags   = {"Name": "us-east-1_delta"}
    }
    "us-east-1_epsilon" = {
      region = "us-east-1"
      cidr   = "11.8.0.0/15"
      tags   = {"Name": "us-east-1_epsilon"}
    }
    "us-west-2_alpha" = {
      region = "us-west-2"
      cidr   = "11.10.0.0/15"
      tags   = {"Name": "us-west-2_alpha"}
    }
    "us-west-2_beta" = {
      region = "us-west-2"
      cidr   = "11.12.0.0/15"
      tags   = {"Name": "us-west-2_beta"}
    }
    "us-west-2_gamma" = {
      region = "us-west-2"
      cidr   = "11.14.0.0/15"
      tags   = {"Name": "us-west-2_gamma"}
    }
    "us-west-2_delta" = {
      region = "us-west-2"
      cidr   = "11.16.0.0/15"
      tags   = {"Name": "us-west-2_delta"}
    }
    "us-west-2_epsilon" = {
      region = "us-west-2"
      cidr   = "11.18.0.0/15"
      tags   = {"Name": "us-west-2_epsilon"}
    }
    "eu-west-1_alpha" = {
      region = "eu-west-1"
      cidr   = "11.20.0.0/15"
      tags   = {"Name": "eu-west-1_alpha"}
    }
    "eu-west-1_beta" = {
      region = "eu-west-1"
      cidr   = "11.22.0.0/15"
      tags   = {"Name": "eu-west-1_beta"}
    }
    "eu-west-1_gamma" = {
      region = "eu-west-1"
      cidr   = "11.24.0.0/15"
      tags   = {"Name": "eu-west-1_gamma"}
    }
    "eu-west-1_delta" = {
      region = "eu-west-1"
      cidr   = "11.26.0.0/15"
      tags   = {"Name": "eu-west-1_delta"}
    }
    "eu-west-1_epsilon" = {
      region = "eu-west-1"
      cidr   = "11.28.0.0/15"
      tags   = {"Name": "eu-west-1_epsilon"}
    }
    "ap-south-1_alpha" = {
      region = "ap-south-1"
      cidr   = "11.30.0.0/15"
      tags   = {"Name": "ap-south-1_alpha"}
    }
    "ap-south-1_beta" = {
      region = "ap-south-1"
      cidr   = "11.32.0.0/15"
      tags   = {"Name": "ap-south-1_beta"}
    }
    "ap-south-1_gamma" = {
      region = "ap-south-1"
      cidr   = "11.34.0.0/15"
      tags   = {"Name": "ap-south-1_gamma"}
    }
    "ap-south-1_delta" = {
      region = "ap-south-1"
      cidr   = "11.36.0.0/15"
      tags   = {"Name": "ap-south-1_delta"}
    }
    "ap-south-1_epsilon" = {
      region = "ap-south-1"
      cidr   = "11.38.0.0/15"
      tags   = {"Name": "ap-south-1_epsilon"}
    }
    "ap-southeast-1_alpha" = {
      region = "ap-southeast-1"
      cidr   = "11.40.0.0/15"
      tags   = {"Name": "ap-southeast-1_alpha"}
    }
    "ap-southeast-1_beta" = {
      region = "ap-southeast-1"
      cidr   = "11.42.0.0/15"
      tags   = {"Name": "ap-southeast-1_beta"}
    }
    "ap-southeast-1_gamma" = {
      region = "ap-southeast-1"
      cidr   = "11.44.0.0/15"
      tags   = {"Name": "ap-southeast-1_gamma"}
    }
    "ap-southeast-1_delta" = {
      region = "ap-southeast-1"
      cidr   = "11.46.0.0/15"
      tags   = {"Name": "ap-southeast-1_delta"}
    }
    "ap-southeast-1_epsilon" = {
      region = "ap-southeast-1"
      cidr   = "11.48.0.0/15"
      tags   = {"Name": "ap-southeast-1_epsilon"}
    }
    "ap-northeast-1_alpha" = {
      region = "ap-northeast-1"
      cidr   = "11.50.0.0/15"
      tags   = {"Name": "ap-northeast-1_alpha"}
    }
    "ap-northeast-1_beta" = {
      region = "ap-northeast-1"
      cidr   = "11.52.0.0/15"
      tags   = {"Name": "ap-northeast-1_beta"}
    }
    "ap-northeast-1_gamma" = {
      region = "ap-northeast-1"
      cidr   = "11.54.0.0/15"
      tags   = {"Name": "ap-northeast-1_gamma"}
    }
    "ap-northeast-1_delta" = {
      region = "ap-northeast-1"
      cidr   = "11.56.0.0/15"
      tags   = {"Name": "ap-northeast-1_delta"}
    }
    "ap-northeast-1_epsilon" = {
      region = "ap-northeast-1"
      cidr   = "11.58.0.0/15"
      tags   = {"Name": "ap-northeast-1_epsilon"}
    }
    "eu-central-1_alpha" = {
      region = "eu-central-1"
      cidr   = "11.60.0.0/15"
      tags   = {"Name": "eu-central-1_alpha"}
    }
    "eu-central-1_beta" = {
      region = "eu-central-1"
      cidr   = "11.62.0.0/15"
      tags   = {"Name": "eu-central-1_beta"}
    }
    "eu-central-1_gamma" = {
      region = "eu-central-1"
      cidr   = "11.64.0.0/15"
      tags   = {"Name": "eu-central-1_gamma"}
    }
    "eu-central-1_delta" = {
      region = "eu-central-1"
      cidr   = "11.66.0.0/15"
      tags   = {"Name": "eu-central-1_delta"}
    }
    "eu-central-1_epsilon" = {
      region = "eu-central-1"
      cidr   = "11.68.0.0/15"
      tags   = {"Name": "eu-central-1_epsilon"}
    }
    "ap-southeast-2_alpha" = {
      region = "ap-southeast-2"
      cidr   = "11.70.0.0/15"
      tags   = {"Name": "ap-southeast-2_alpha"}
    }
    "ap-southeast-2_beta" = {
      region = "ap-southeast-2"
      cidr   = "11.72.0.0/15"
      tags   = {"Name": "ap-southeast-2_beta"}
    }
    "ap-southeast-2_gamma" = {
      region = "ap-southeast-2"
      cidr   = "11.74.0.0/15"
      tags   = {"Name": "ap-southeast-2_gamma"}
    }
    "ap-southeast-2_delta" = {
      region = "ap-southeast-2"
      cidr   = "11.76.0.0/15"
      tags   = {"Name": "ap-southeast-2_delta"}
    }
    "ap-southeast-2_epsilon" = {
      region = "ap-southeast-2"
      cidr   = "11.78.0.0/15"
      tags   = {"Name": "ap-southeast-2_epsilon"}
    }
    "sa-east-1_alpha" = {
      region = "sa-east-1"
      cidr   = "11.80.0.0/15"
      tags   = {"Name": "sa-east-1_alpha"}
    }
    "sa-east-1_beta" = {
      region = "sa-east-1"
      cidr   = "11.82.0.0/15"
      tags   = {"Name": "sa-east-1_beta"}
    }
    "sa-east-1_gamma" = {
      region = "sa-east-1"
      cidr   = "11.84.0.0/15"
      tags   = {"Name": "sa-east-1_gamma"}
    }
    "sa-east-1_delta" = {
      region = "sa-east-1"
      cidr   = "11.86.0.0/15"
      tags   = {"Name": "sa-east-1_delta"}
    }
    "sa-east-1_epsilon" = {
      region = "sa-east-1"
      cidr   = "11.88.0.0/15"
      tags   = {"Name": "sa-east-1_epsilon"}
    }
    "af-south-1_alpha" = {
      region = "af-south-1"
      cidr   = "11.90.0.0/15"
      tags   = {"Name": "af-south-1_alpha"}
    }
    "af-south-1_beta" = {
      region = "af-south-1"
      cidr   = "11.92.0.0/15"
      tags   = {"Name": "af-south-1_beta"}
    }
    "af-south-1_gamma" = {
      region = "af-south-1"
      cidr   = "11.94.0.0/15"
      tags   = {"Name": "af-south-1_gamma"}
    }
    "af-south-1_delta" = {
      region = "af-south-1"
      cidr   = "11.96.0.0/15"
      tags   = {"Name": "af-south-1_delta"}
    }
    "af-south-1_epsilon" = {
      region = "af-south-1"
      cidr   = "11.98.0.0/15"
      tags   = {"Name": "af-south-1_epsilon"}
    }
    "me-central-1_alpha" = {
      region = "me-central-1"
      cidr   = "11.100.0.0/15"
      tags   = {"Name": "me-central-1_alpha"}
    }
    "me-central-1_beta" = {
      region = "me-central-1"
      cidr   = "11.102.0.0/15"
      tags   = {"Name": "me-central-1_beta"}
    }
    "me-central-1_gamma" = {
      region = "me-central-1"
      cidr   = "11.104.0.0/15"
      tags   = {"Name": "me-central-1_gamma"}
    }
    "me-central-1_delta" = {
      region = "me-central-1"
      cidr   = "11.106.0.0/15"
      tags   = {"Name": "me-central-1_delta"}
    }
    "me-central-1_epsilon" = {
      region = "me-central-1"
      cidr   = "11.108.0.0/15"
      tags   = {"Name": "me-central-1_epsilon"}
    }
    "ap-southeast-3_alpha" = {
      region = "ap-southeast-3"
      cidr   = "11.110.0.0/15"
      tags   = {"Name": "ap-southeast-3_alpha"}
    }
    "ap-southeast-3_beta" = {
      region = "ap-southeast-3"
      cidr   = "11.112.0.0/15"
      tags   = {"Name": "ap-southeast-3_beta"}
    }
    "ap-southeast-3_gamma" = {
      region = "ap-southeast-3"
      cidr   = "11.114.0.0/15"
      tags   = {"Name": "ap-southeast-3_gamma"}
    }
    "ap-southeast-3_delta" = {
      region = "ap-southeast-3"
      cidr   = "11.116.0.0/15"
      tags   = {"Name": "ap-southeast-3_delta"}
    }
    "ap-southeast-3_epsilon" = {
      region = "ap-southeast-3"
      cidr   = "11.118.0.0/15"
      tags   = {"Name": "ap-southeast-3_epsilon"}
    }
    "eu-west-3_alpha" = {
      region = "eu-west-3"
      cidr   = "11.120.0.0/15"
      tags   = {"Name": "eu-west-3_alpha"}
    }
    "eu-west-3_beta" = {
      region = "eu-west-3"
      cidr   = "11.122.0.0/15"
      tags   = {"Name": "eu-west-3_beta"}
    }
    "eu-west-3_gamma" = {
      region = "eu-west-3"
      cidr   = "11.124.0.0/15"
      tags   = {"Name": "eu-west-3_gamma"}
    }
    "eu-west-3_delta" = {
      region = "eu-west-3"
      cidr   = "11.126.0.0/15"
      tags   = {"Name": "eu-west-3_delta"}
    }
    "eu-west-3_epsilon" = {
      region = "eu-west-3"
      cidr   = "11.128.0.0/15"
      tags   = {"Name": "eu-west-3_epsilon"}
    }
    "eu-north-1_alpha" = {
      region = "eu-north-1"
      cidr   = "11.130.0.0/15"
      tags   = {"Name": "eu-north-1_alpha"}
    }
    "eu-north-1_beta" = {
      region = "eu-north-1"
      cidr   = "11.132.0.0/15"
      tags   = {"Name": "eu-north-1_beta"}
    }
    "eu-north-1_gamma" = {
      region = "eu-north-1"
      cidr   = "11.134.0.0/15"
      tags   = {"Name": "eu-north-1_gamma"}
    }
    "eu-north-1_delta" = {
      region = "eu-north-1"
      cidr   = "11.136.0.0/15"
      tags   = {"Name": "eu-north-1_delta"}
    }
    "eu-north-1_epsilon" = {
      region = "eu-north-1"
      cidr   = "11.138.0.0/15"
      tags   = {"Name": "eu-north-1_epsilon"}
    }
  }

  subnets = {
    "us-east-1_alpha_primus" = {
      cidr   = "11.0.0.0/22"
      vpc    = "us-east-1_alpha"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_alpha_primus"}
    }
    "us-east-1_alpha_secundus" = {
      cidr   = "11.0.4.0/22"
      vpc    = "us-east-1_alpha"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_alpha_secundus"}
    }
    "us-east-1_alpha_tertius" = {
      cidr   = "11.0.8.0/22"
      vpc    = "us-east-1_alpha"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_alpha_tertius"}
    }
    "us-east-1_alpha_quartus" = {
      cidr   = "11.0.12.0/22"
      vpc    = "us-east-1_alpha"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_alpha_quartus"}
    }
    "us-east-1_alpha_quintus" = {
      cidr   = "11.0.16.0/22"
      vpc    = "us-east-1_alpha"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_alpha_quintus"}
    }
    "us-east-1_alpha_sextus" = {
      cidr   = "11.0.20.0/22"
      vpc    = "us-east-1_alpha"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_alpha_sextus"}
    }
    "us-east-1_alpha_septimus" = {
      cidr   = "11.0.24.0/22"
      vpc    = "us-east-1_alpha"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_alpha_septimus"}
    }
    "us-east-1_alpha_octavus" = {
      cidr   = "11.0.28.0/22"
      vpc    = "us-east-1_alpha"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_alpha_octavus"}
    }
    "us-east-1_beta_primus" = {
      cidr   = "11.2.0.0/22"
      vpc    = "us-east-1_beta"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_beta_primus"}
    }
    "us-east-1_beta_secundus" = {
      cidr   = "11.2.4.0/22"
      vpc    = "us-east-1_beta"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_beta_secundus"}
    }
    "us-east-1_beta_tertius" = {
      cidr   = "11.2.8.0/22"
      vpc    = "us-east-1_beta"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_beta_tertius"}
    }
    "us-east-1_beta_quartus" = {
      cidr   = "11.2.12.0/22"
      vpc    = "us-east-1_beta"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_beta_quartus"}
    }
    "us-east-1_beta_quintus" = {
      cidr   = "11.2.16.0/22"
      vpc    = "us-east-1_beta"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_beta_quintus"}
    }
    "us-east-1_beta_sextus" = {
      cidr   = "11.2.20.0/22"
      vpc    = "us-east-1_beta"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_beta_sextus"}
    }
    "us-east-1_beta_septimus" = {
      cidr   = "11.2.24.0/22"
      vpc    = "us-east-1_beta"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_beta_septimus"}
    }
    "us-east-1_beta_octavus" = {
      cidr   = "11.2.28.0/22"
      vpc    = "us-east-1_beta"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_beta_octavus"}
    }
    "us-east-1_gamma_primus" = {
      cidr   = "11.4.0.0/22"
      vpc    = "us-east-1_gamma"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_gamma_primus"}
    }
    "us-east-1_gamma_secundus" = {
      cidr   = "11.4.4.0/22"
      vpc    = "us-east-1_gamma"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_gamma_secundus"}
    }
    "us-east-1_gamma_tertius" = {
      cidr   = "11.4.8.0/22"
      vpc    = "us-east-1_gamma"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_gamma_tertius"}
    }
    "us-east-1_gamma_quartus" = {
      cidr   = "11.4.12.0/22"
      vpc    = "us-east-1_gamma"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_gamma_quartus"}
    }
    "us-east-1_gamma_quintus" = {
      cidr   = "11.4.16.0/22"
      vpc    = "us-east-1_gamma"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_gamma_quintus"}
    }
    "us-east-1_gamma_sextus" = {
      cidr   = "11.4.20.0/22"
      vpc    = "us-east-1_gamma"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_gamma_sextus"}
    }
    "us-east-1_gamma_septimus" = {
      cidr   = "11.4.24.0/22"
      vpc    = "us-east-1_gamma"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_gamma_septimus"}
    }
    "us-east-1_gamma_octavus" = {
      cidr   = "11.4.28.0/22"
      vpc    = "us-east-1_gamma"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_gamma_octavus"}
    }
    "us-east-1_delta_primus" = {
      cidr   = "11.6.0.0/22"
      vpc    = "us-east-1_delta"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_delta_primus"}
    }
    "us-east-1_delta_secundus" = {
      cidr   = "11.6.4.0/22"
      vpc    = "us-east-1_delta"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_delta_secundus"}
    }
    "us-east-1_delta_tertius" = {
      cidr   = "11.6.8.0/22"
      vpc    = "us-east-1_delta"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_delta_tertius"}
    }
    "us-east-1_delta_quartus" = {
      cidr   = "11.6.12.0/22"
      vpc    = "us-east-1_delta"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_delta_quartus"}
    }
    "us-east-1_delta_quintus" = {
      cidr   = "11.6.16.0/22"
      vpc    = "us-east-1_delta"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_delta_quintus"}
    }
    "us-east-1_delta_sextus" = {
      cidr   = "11.6.20.0/22"
      vpc    = "us-east-1_delta"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_delta_sextus"}
    }
    "us-east-1_delta_septimus" = {
      cidr   = "11.6.24.0/22"
      vpc    = "us-east-1_delta"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_delta_septimus"}
    }
    "us-east-1_delta_octavus" = {
      cidr   = "11.6.28.0/22"
      vpc    = "us-east-1_delta"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_delta_octavus"}
    }
    "us-east-1_epsilon_primus" = {
      cidr   = "11.8.0.0/22"
      vpc    = "us-east-1_epsilon"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_epsilon_primus"}
    }
    "us-east-1_epsilon_secundus" = {
      cidr   = "11.8.4.0/22"
      vpc    = "us-east-1_epsilon"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_epsilon_secundus"}
    }
    "us-east-1_epsilon_tertius" = {
      cidr   = "11.8.8.0/22"
      vpc    = "us-east-1_epsilon"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_epsilon_tertius"}
    }
    "us-east-1_epsilon_quartus" = {
      cidr   = "11.8.12.0/22"
      vpc    = "us-east-1_epsilon"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_epsilon_quartus"}
    }
    "us-east-1_epsilon_quintus" = {
      cidr   = "11.8.16.0/22"
      vpc    = "us-east-1_epsilon"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_epsilon_quintus"}
    }
    "us-east-1_epsilon_sextus" = {
      cidr   = "11.8.20.0/22"
      vpc    = "us-east-1_epsilon"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_epsilon_sextus"}
    }
    "us-east-1_epsilon_septimus" = {
      cidr   = "11.8.24.0/22"
      vpc    = "us-east-1_epsilon"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_epsilon_septimus"}
    }
    "us-east-1_epsilon_octavus" = {
      cidr   = "11.8.28.0/22"
      vpc    = "us-east-1_epsilon"
      region = "us-east-1"
      tags   = {"Name": "us-east-1_epsilon_octavus"}
    }
    "us-west-2_alpha_primus" = {
      cidr   = "11.10.0.0/22"
      vpc    = "us-west-2_alpha"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_alpha_primus"}
    }
    "us-west-2_alpha_secundus" = {
      cidr   = "11.10.4.0/22"
      vpc    = "us-west-2_alpha"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_alpha_secundus"}
    }
    "us-west-2_alpha_tertius" = {
      cidr   = "11.10.8.0/22"
      vpc    = "us-west-2_alpha"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_alpha_tertius"}
    }
    "us-west-2_alpha_quartus" = {
      cidr   = "11.10.12.0/22"
      vpc    = "us-west-2_alpha"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_alpha_quartus"}
    }
    "us-west-2_alpha_quintus" = {
      cidr   = "11.10.16.0/22"
      vpc    = "us-west-2_alpha"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_alpha_quintus"}
    }
    "us-west-2_alpha_sextus" = {
      cidr   = "11.10.20.0/22"
      vpc    = "us-west-2_alpha"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_alpha_sextus"}
    }
    "us-west-2_alpha_septimus" = {
      cidr   = "11.10.24.0/22"
      vpc    = "us-west-2_alpha"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_alpha_septimus"}
    }
    "us-west-2_alpha_octavus" = {
      cidr   = "11.10.28.0/22"
      vpc    = "us-west-2_alpha"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_alpha_octavus"}
    }
    "us-west-2_beta_primus" = {
      cidr   = "11.12.0.0/22"
      vpc    = "us-west-2_beta"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_beta_primus"}
    }
    "us-west-2_beta_secundus" = {
      cidr   = "11.12.4.0/22"
      vpc    = "us-west-2_beta"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_beta_secundus"}
    }
    "us-west-2_beta_tertius" = {
      cidr   = "11.12.8.0/22"
      vpc    = "us-west-2_beta"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_beta_tertius"}
    }
    "us-west-2_beta_quartus" = {
      cidr   = "11.12.12.0/22"
      vpc    = "us-west-2_beta"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_beta_quartus"}
    }
    "us-west-2_beta_quintus" = {
      cidr   = "11.12.16.0/22"
      vpc    = "us-west-2_beta"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_beta_quintus"}
    }
    "us-west-2_beta_sextus" = {
      cidr   = "11.12.20.0/22"
      vpc    = "us-west-2_beta"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_beta_sextus"}
    }
    "us-west-2_beta_septimus" = {
      cidr   = "11.12.24.0/22"
      vpc    = "us-west-2_beta"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_beta_septimus"}
    }
    "us-west-2_beta_octavus" = {
      cidr   = "11.12.28.0/22"
      vpc    = "us-west-2_beta"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_beta_octavus"}
    }
    "us-west-2_gamma_primus" = {
      cidr   = "11.14.0.0/22"
      vpc    = "us-west-2_gamma"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_gamma_primus"}
    }
    "us-west-2_gamma_secundus" = {
      cidr   = "11.14.4.0/22"
      vpc    = "us-west-2_gamma"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_gamma_secundus"}
    }
    "us-west-2_gamma_tertius" = {
      cidr   = "11.14.8.0/22"
      vpc    = "us-west-2_gamma"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_gamma_tertius"}
    }
    "us-west-2_gamma_quartus" = {
      cidr   = "11.14.12.0/22"
      vpc    = "us-west-2_gamma"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_gamma_quartus"}
    }
    "us-west-2_gamma_quintus" = {
      cidr   = "11.14.16.0/22"
      vpc    = "us-west-2_gamma"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_gamma_quintus"}
    }
    "us-west-2_gamma_sextus" = {
      cidr   = "11.14.20.0/22"
      vpc    = "us-west-2_gamma"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_gamma_sextus"}
    }
    "us-west-2_gamma_septimus" = {
      cidr   = "11.14.24.0/22"
      vpc    = "us-west-2_gamma"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_gamma_septimus"}
    }
    "us-west-2_gamma_octavus" = {
      cidr   = "11.14.28.0/22"
      vpc    = "us-west-2_gamma"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_gamma_octavus"}
    }
    "us-west-2_delta_primus" = {
      cidr   = "11.16.0.0/22"
      vpc    = "us-west-2_delta"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_delta_primus"}
    }
    "us-west-2_delta_secundus" = {
      cidr   = "11.16.4.0/22"
      vpc    = "us-west-2_delta"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_delta_secundus"}
    }
    "us-west-2_delta_tertius" = {
      cidr   = "11.16.8.0/22"
      vpc    = "us-west-2_delta"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_delta_tertius"}
    }
    "us-west-2_delta_quartus" = {
      cidr   = "11.16.12.0/22"
      vpc    = "us-west-2_delta"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_delta_quartus"}
    }
    "us-west-2_delta_quintus" = {
      cidr   = "11.16.16.0/22"
      vpc    = "us-west-2_delta"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_delta_quintus"}
    }
    "us-west-2_delta_sextus" = {
      cidr   = "11.16.20.0/22"
      vpc    = "us-west-2_delta"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_delta_sextus"}
    }
    "us-west-2_delta_septimus" = {
      cidr   = "11.16.24.0/22"
      vpc    = "us-west-2_delta"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_delta_septimus"}
    }
    "us-west-2_delta_octavus" = {
      cidr   = "11.16.28.0/22"
      vpc    = "us-west-2_delta"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_delta_octavus"}
    }
    "us-west-2_epsilon_primus" = {
      cidr   = "11.18.0.0/22"
      vpc    = "us-west-2_epsilon"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_epsilon_primus"}
    }
    "us-west-2_epsilon_secundus" = {
      cidr   = "11.18.4.0/22"
      vpc    = "us-west-2_epsilon"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_epsilon_secundus"}
    }
    "us-west-2_epsilon_tertius" = {
      cidr   = "11.18.8.0/22"
      vpc    = "us-west-2_epsilon"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_epsilon_tertius"}
    }
    "us-west-2_epsilon_quartus" = {
      cidr   = "11.18.12.0/22"
      vpc    = "us-west-2_epsilon"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_epsilon_quartus"}
    }
    "us-west-2_epsilon_quintus" = {
      cidr   = "11.18.16.0/22"
      vpc    = "us-west-2_epsilon"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_epsilon_quintus"}
    }
    "us-west-2_epsilon_sextus" = {
      cidr   = "11.18.20.0/22"
      vpc    = "us-west-2_epsilon"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_epsilon_sextus"}
    }
    "us-west-2_epsilon_septimus" = {
      cidr   = "11.18.24.0/22"
      vpc    = "us-west-2_epsilon"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_epsilon_septimus"}
    }
    "us-west-2_epsilon_octavus" = {
      cidr   = "11.18.28.0/22"
      vpc    = "us-west-2_epsilon"
      region = "us-west-2"
      tags   = {"Name": "us-west-2_epsilon_octavus"}
    }
    "eu-west-1_alpha_primus" = {
      cidr   = "11.20.0.0/22"
      vpc    = "eu-west-1_alpha"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_alpha_primus"}
    }
    "eu-west-1_alpha_secundus" = {
      cidr   = "11.20.4.0/22"
      vpc    = "eu-west-1_alpha"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_alpha_secundus"}
    }
    "eu-west-1_alpha_tertius" = {
      cidr   = "11.20.8.0/22"
      vpc    = "eu-west-1_alpha"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_alpha_tertius"}
    }
    "eu-west-1_alpha_quartus" = {
      cidr   = "11.20.12.0/22"
      vpc    = "eu-west-1_alpha"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_alpha_quartus"}
    }
    "eu-west-1_alpha_quintus" = {
      cidr   = "11.20.16.0/22"
      vpc    = "eu-west-1_alpha"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_alpha_quintus"}
    }
    "eu-west-1_alpha_sextus" = {
      cidr   = "11.20.20.0/22"
      vpc    = "eu-west-1_alpha"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_alpha_sextus"}
    }
    "eu-west-1_alpha_septimus" = {
      cidr   = "11.20.24.0/22"
      vpc    = "eu-west-1_alpha"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_alpha_septimus"}
    }
    "eu-west-1_alpha_octavus" = {
      cidr   = "11.20.28.0/22"
      vpc    = "eu-west-1_alpha"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_alpha_octavus"}
    }
    "eu-west-1_beta_primus" = {
      cidr   = "11.22.0.0/22"
      vpc    = "eu-west-1_beta"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_beta_primus"}
    }
    "eu-west-1_beta_secundus" = {
      cidr   = "11.22.4.0/22"
      vpc    = "eu-west-1_beta"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_beta_secundus"}
    }
    "eu-west-1_beta_tertius" = {
      cidr   = "11.22.8.0/22"
      vpc    = "eu-west-1_beta"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_beta_tertius"}
    }
    "eu-west-1_beta_quartus" = {
      cidr   = "11.22.12.0/22"
      vpc    = "eu-west-1_beta"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_beta_quartus"}
    }
    "eu-west-1_beta_quintus" = {
      cidr   = "11.22.16.0/22"
      vpc    = "eu-west-1_beta"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_beta_quintus"}
    }
    "eu-west-1_beta_sextus" = {
      cidr   = "11.22.20.0/22"
      vpc    = "eu-west-1_beta"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_beta_sextus"}
    }
    "eu-west-1_beta_septimus" = {
      cidr   = "11.22.24.0/22"
      vpc    = "eu-west-1_beta"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_beta_septimus"}
    }
    "eu-west-1_beta_octavus" = {
      cidr   = "11.22.28.0/22"
      vpc    = "eu-west-1_beta"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_beta_octavus"}
    }
    "eu-west-1_gamma_primus" = {
      cidr   = "11.24.0.0/22"
      vpc    = "eu-west-1_gamma"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_gamma_primus"}
    }
    "eu-west-1_gamma_secundus" = {
      cidr   = "11.24.4.0/22"
      vpc    = "eu-west-1_gamma"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_gamma_secundus"}
    }
    "eu-west-1_gamma_tertius" = {
      cidr   = "11.24.8.0/22"
      vpc    = "eu-west-1_gamma"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_gamma_tertius"}
    }
    "eu-west-1_gamma_quartus" = {
      cidr   = "11.24.12.0/22"
      vpc    = "eu-west-1_gamma"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_gamma_quartus"}
    }
    "eu-west-1_gamma_quintus" = {
      cidr   = "11.24.16.0/22"
      vpc    = "eu-west-1_gamma"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_gamma_quintus"}
    }
    "eu-west-1_gamma_sextus" = {
      cidr   = "11.24.20.0/22"
      vpc    = "eu-west-1_gamma"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_gamma_sextus"}
    }
    "eu-west-1_gamma_septimus" = {
      cidr   = "11.24.24.0/22"
      vpc    = "eu-west-1_gamma"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_gamma_septimus"}
    }
    "eu-west-1_gamma_octavus" = {
      cidr   = "11.24.28.0/22"
      vpc    = "eu-west-1_gamma"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_gamma_octavus"}
    }
    "eu-west-1_delta_primus" = {
      cidr   = "11.26.0.0/22"
      vpc    = "eu-west-1_delta"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_delta_primus"}
    }
    "eu-west-1_delta_secundus" = {
      cidr   = "11.26.4.0/22"
      vpc    = "eu-west-1_delta"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_delta_secundus"}
    }
    "eu-west-1_delta_tertius" = {
      cidr   = "11.26.8.0/22"
      vpc    = "eu-west-1_delta"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_delta_tertius"}
    }
    "eu-west-1_delta_quartus" = {
      cidr   = "11.26.12.0/22"
      vpc    = "eu-west-1_delta"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_delta_quartus"}
    }
    "eu-west-1_delta_quintus" = {
      cidr   = "11.26.16.0/22"
      vpc    = "eu-west-1_delta"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_delta_quintus"}
    }
    "eu-west-1_delta_sextus" = {
      cidr   = "11.26.20.0/22"
      vpc    = "eu-west-1_delta"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_delta_sextus"}
    }
    "eu-west-1_delta_septimus" = {
      cidr   = "11.26.24.0/22"
      vpc    = "eu-west-1_delta"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_delta_septimus"}
    }
    "eu-west-1_delta_octavus" = {
      cidr   = "11.26.28.0/22"
      vpc    = "eu-west-1_delta"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_delta_octavus"}
    }
    "eu-west-1_epsilon_primus" = {
      cidr   = "11.28.0.0/22"
      vpc    = "eu-west-1_epsilon"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_epsilon_primus"}
    }
    "eu-west-1_epsilon_secundus" = {
      cidr   = "11.28.4.0/22"
      vpc    = "eu-west-1_epsilon"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_epsilon_secundus"}
    }
    "eu-west-1_epsilon_tertius" = {
      cidr   = "11.28.8.0/22"
      vpc    = "eu-west-1_epsilon"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_epsilon_tertius"}
    }
    "eu-west-1_epsilon_quartus" = {
      cidr   = "11.28.12.0/22"
      vpc    = "eu-west-1_epsilon"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_epsilon_quartus"}
    }
    "eu-west-1_epsilon_quintus" = {
      cidr   = "11.28.16.0/22"
      vpc    = "eu-west-1_epsilon"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_epsilon_quintus"}
    }
    "eu-west-1_epsilon_sextus" = {
      cidr   = "11.28.20.0/22"
      vpc    = "eu-west-1_epsilon"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_epsilon_sextus"}
    }
    "eu-west-1_epsilon_septimus" = {
      cidr   = "11.28.24.0/22"
      vpc    = "eu-west-1_epsilon"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_epsilon_septimus"}
    }
    "eu-west-1_epsilon_octavus" = {
      cidr   = "11.28.28.0/22"
      vpc    = "eu-west-1_epsilon"
      region = "eu-west-1"
      tags   = {"Name": "eu-west-1_epsilon_octavus"}
    }
    "ap-south-1_alpha_primus" = {
      cidr   = "11.30.0.0/22"
      vpc    = "ap-south-1_alpha"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_alpha_primus"}
    }
    "ap-south-1_alpha_secundus" = {
      cidr   = "11.30.4.0/22"
      vpc    = "ap-south-1_alpha"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_alpha_secundus"}
    }
    "ap-south-1_alpha_tertius" = {
      cidr   = "11.30.8.0/22"
      vpc    = "ap-south-1_alpha"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_alpha_tertius"}
    }
    "ap-south-1_alpha_quartus" = {
      cidr   = "11.30.12.0/22"
      vpc    = "ap-south-1_alpha"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_alpha_quartus"}
    }
    "ap-south-1_alpha_quintus" = {
      cidr   = "11.30.16.0/22"
      vpc    = "ap-south-1_alpha"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_alpha_quintus"}
    }
    "ap-south-1_alpha_sextus" = {
      cidr   = "11.30.20.0/22"
      vpc    = "ap-south-1_alpha"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_alpha_sextus"}
    }
    "ap-south-1_alpha_septimus" = {
      cidr   = "11.30.24.0/22"
      vpc    = "ap-south-1_alpha"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_alpha_septimus"}
    }
    "ap-south-1_alpha_octavus" = {
      cidr   = "11.30.28.0/22"
      vpc    = "ap-south-1_alpha"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_alpha_octavus"}
    }
    "ap-south-1_beta_primus" = {
      cidr   = "11.32.0.0/22"
      vpc    = "ap-south-1_beta"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_beta_primus"}
    }
    "ap-south-1_beta_secundus" = {
      cidr   = "11.32.4.0/22"
      vpc    = "ap-south-1_beta"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_beta_secundus"}
    }
    "ap-south-1_beta_tertius" = {
      cidr   = "11.32.8.0/22"
      vpc    = "ap-south-1_beta"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_beta_tertius"}
    }
    "ap-south-1_beta_quartus" = {
      cidr   = "11.32.12.0/22"
      vpc    = "ap-south-1_beta"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_beta_quartus"}
    }
    "ap-south-1_beta_quintus" = {
      cidr   = "11.32.16.0/22"
      vpc    = "ap-south-1_beta"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_beta_quintus"}
    }
    "ap-south-1_beta_sextus" = {
      cidr   = "11.32.20.0/22"
      vpc    = "ap-south-1_beta"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_beta_sextus"}
    }
    "ap-south-1_beta_septimus" = {
      cidr   = "11.32.24.0/22"
      vpc    = "ap-south-1_beta"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_beta_septimus"}
    }
    "ap-south-1_beta_octavus" = {
      cidr   = "11.32.28.0/22"
      vpc    = "ap-south-1_beta"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_beta_octavus"}
    }
    "ap-south-1_gamma_primus" = {
      cidr   = "11.34.0.0/22"
      vpc    = "ap-south-1_gamma"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_gamma_primus"}
    }
    "ap-south-1_gamma_secundus" = {
      cidr   = "11.34.4.0/22"
      vpc    = "ap-south-1_gamma"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_gamma_secundus"}
    }
    "ap-south-1_gamma_tertius" = {
      cidr   = "11.34.8.0/22"
      vpc    = "ap-south-1_gamma"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_gamma_tertius"}
    }
    "ap-south-1_gamma_quartus" = {
      cidr   = "11.34.12.0/22"
      vpc    = "ap-south-1_gamma"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_gamma_quartus"}
    }
    "ap-south-1_gamma_quintus" = {
      cidr   = "11.34.16.0/22"
      vpc    = "ap-south-1_gamma"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_gamma_quintus"}
    }
    "ap-south-1_gamma_sextus" = {
      cidr   = "11.34.20.0/22"
      vpc    = "ap-south-1_gamma"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_gamma_sextus"}
    }
    "ap-south-1_gamma_septimus" = {
      cidr   = "11.34.24.0/22"
      vpc    = "ap-south-1_gamma"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_gamma_septimus"}
    }
    "ap-south-1_gamma_octavus" = {
      cidr   = "11.34.28.0/22"
      vpc    = "ap-south-1_gamma"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_gamma_octavus"}
    }
    "ap-south-1_delta_primus" = {
      cidr   = "11.36.0.0/22"
      vpc    = "ap-south-1_delta"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_delta_primus"}
    }
    "ap-south-1_delta_secundus" = {
      cidr   = "11.36.4.0/22"
      vpc    = "ap-south-1_delta"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_delta_secundus"}
    }
    "ap-south-1_delta_tertius" = {
      cidr   = "11.36.8.0/22"
      vpc    = "ap-south-1_delta"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_delta_tertius"}
    }
    "ap-south-1_delta_quartus" = {
      cidr   = "11.36.12.0/22"
      vpc    = "ap-south-1_delta"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_delta_quartus"}
    }
    "ap-south-1_delta_quintus" = {
      cidr   = "11.36.16.0/22"
      vpc    = "ap-south-1_delta"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_delta_quintus"}
    }
    "ap-south-1_delta_sextus" = {
      cidr   = "11.36.20.0/22"
      vpc    = "ap-south-1_delta"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_delta_sextus"}
    }
    "ap-south-1_delta_septimus" = {
      cidr   = "11.36.24.0/22"
      vpc    = "ap-south-1_delta"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_delta_septimus"}
    }
    "ap-south-1_delta_octavus" = {
      cidr   = "11.36.28.0/22"
      vpc    = "ap-south-1_delta"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_delta_octavus"}
    }
    "ap-south-1_epsilon_primus" = {
      cidr   = "11.38.0.0/22"
      vpc    = "ap-south-1_epsilon"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_epsilon_primus"}
    }
    "ap-south-1_epsilon_secundus" = {
      cidr   = "11.38.4.0/22"
      vpc    = "ap-south-1_epsilon"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_epsilon_secundus"}
    }
    "ap-south-1_epsilon_tertius" = {
      cidr   = "11.38.8.0/22"
      vpc    = "ap-south-1_epsilon"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_epsilon_tertius"}
    }
    "ap-south-1_epsilon_quartus" = {
      cidr   = "11.38.12.0/22"
      vpc    = "ap-south-1_epsilon"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_epsilon_quartus"}
    }
    "ap-south-1_epsilon_quintus" = {
      cidr   = "11.38.16.0/22"
      vpc    = "ap-south-1_epsilon"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_epsilon_quintus"}
    }
    "ap-south-1_epsilon_sextus" = {
      cidr   = "11.38.20.0/22"
      vpc    = "ap-south-1_epsilon"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_epsilon_sextus"}
    }
    "ap-south-1_epsilon_septimus" = {
      cidr   = "11.38.24.0/22"
      vpc    = "ap-south-1_epsilon"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_epsilon_septimus"}
    }
    "ap-south-1_epsilon_octavus" = {
      cidr   = "11.38.28.0/22"
      vpc    = "ap-south-1_epsilon"
      region = "ap-south-1"
      tags   = {"Name": "ap-south-1_epsilon_octavus"}
    }
    "ap-southeast-1_alpha_primus" = {
      cidr   = "11.40.0.0/22"
      vpc    = "ap-southeast-1_alpha"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_alpha_primus"}
    }
    "ap-southeast-1_alpha_secundus" = {
      cidr   = "11.40.4.0/22"
      vpc    = "ap-southeast-1_alpha"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_alpha_secundus"}
    }
    "ap-southeast-1_alpha_tertius" = {
      cidr   = "11.40.8.0/22"
      vpc    = "ap-southeast-1_alpha"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_alpha_tertius"}
    }
    "ap-southeast-1_alpha_quartus" = {
      cidr   = "11.40.12.0/22"
      vpc    = "ap-southeast-1_alpha"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_alpha_quartus"}
    }
    "ap-southeast-1_alpha_quintus" = {
      cidr   = "11.40.16.0/22"
      vpc    = "ap-southeast-1_alpha"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_alpha_quintus"}
    }
    "ap-southeast-1_alpha_sextus" = {
      cidr   = "11.40.20.0/22"
      vpc    = "ap-southeast-1_alpha"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_alpha_sextus"}
    }
    "ap-southeast-1_alpha_septimus" = {
      cidr   = "11.40.24.0/22"
      vpc    = "ap-southeast-1_alpha"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_alpha_septimus"}
    }
    "ap-southeast-1_alpha_octavus" = {
      cidr   = "11.40.28.0/22"
      vpc    = "ap-southeast-1_alpha"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_alpha_octavus"}
    }
    "ap-southeast-1_beta_primus" = {
      cidr   = "11.42.0.0/22"
      vpc    = "ap-southeast-1_beta"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_beta_primus"}
    }
    "ap-southeast-1_beta_secundus" = {
      cidr   = "11.42.4.0/22"
      vpc    = "ap-southeast-1_beta"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_beta_secundus"}
    }
    "ap-southeast-1_beta_tertius" = {
      cidr   = "11.42.8.0/22"
      vpc    = "ap-southeast-1_beta"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_beta_tertius"}
    }
    "ap-southeast-1_beta_quartus" = {
      cidr   = "11.42.12.0/22"
      vpc    = "ap-southeast-1_beta"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_beta_quartus"}
    }
    "ap-southeast-1_beta_quintus" = {
      cidr   = "11.42.16.0/22"
      vpc    = "ap-southeast-1_beta"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_beta_quintus"}
    }
    "ap-southeast-1_beta_sextus" = {
      cidr   = "11.42.20.0/22"
      vpc    = "ap-southeast-1_beta"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_beta_sextus"}
    }
    "ap-southeast-1_beta_septimus" = {
      cidr   = "11.42.24.0/22"
      vpc    = "ap-southeast-1_beta"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_beta_septimus"}
    }
    "ap-southeast-1_beta_octavus" = {
      cidr   = "11.42.28.0/22"
      vpc    = "ap-southeast-1_beta"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_beta_octavus"}
    }
    "ap-southeast-1_gamma_primus" = {
      cidr   = "11.44.0.0/22"
      vpc    = "ap-southeast-1_gamma"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_gamma_primus"}
    }
    "ap-southeast-1_gamma_secundus" = {
      cidr   = "11.44.4.0/22"
      vpc    = "ap-southeast-1_gamma"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_gamma_secundus"}
    }
    "ap-southeast-1_gamma_tertius" = {
      cidr   = "11.44.8.0/22"
      vpc    = "ap-southeast-1_gamma"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_gamma_tertius"}
    }
    "ap-southeast-1_gamma_quartus" = {
      cidr   = "11.44.12.0/22"
      vpc    = "ap-southeast-1_gamma"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_gamma_quartus"}
    }
    "ap-southeast-1_gamma_quintus" = {
      cidr   = "11.44.16.0/22"
      vpc    = "ap-southeast-1_gamma"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_gamma_quintus"}
    }
    "ap-southeast-1_gamma_sextus" = {
      cidr   = "11.44.20.0/22"
      vpc    = "ap-southeast-1_gamma"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_gamma_sextus"}
    }
    "ap-southeast-1_gamma_septimus" = {
      cidr   = "11.44.24.0/22"
      vpc    = "ap-southeast-1_gamma"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_gamma_septimus"}
    }
    "ap-southeast-1_gamma_octavus" = {
      cidr   = "11.44.28.0/22"
      vpc    = "ap-southeast-1_gamma"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_gamma_octavus"}
    }
    "ap-southeast-1_delta_primus" = {
      cidr   = "11.46.0.0/22"
      vpc    = "ap-southeast-1_delta"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_delta_primus"}
    }
    "ap-southeast-1_delta_secundus" = {
      cidr   = "11.46.4.0/22"
      vpc    = "ap-southeast-1_delta"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_delta_secundus"}
    }
    "ap-southeast-1_delta_tertius" = {
      cidr   = "11.46.8.0/22"
      vpc    = "ap-southeast-1_delta"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_delta_tertius"}
    }
    "ap-southeast-1_delta_quartus" = {
      cidr   = "11.46.12.0/22"
      vpc    = "ap-southeast-1_delta"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_delta_quartus"}
    }
    "ap-southeast-1_delta_quintus" = {
      cidr   = "11.46.16.0/22"
      vpc    = "ap-southeast-1_delta"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_delta_quintus"}
    }
    "ap-southeast-1_delta_sextus" = {
      cidr   = "11.46.20.0/22"
      vpc    = "ap-southeast-1_delta"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_delta_sextus"}
    }
    "ap-southeast-1_delta_septimus" = {
      cidr   = "11.46.24.0/22"
      vpc    = "ap-southeast-1_delta"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_delta_septimus"}
    }
    "ap-southeast-1_delta_octavus" = {
      cidr   = "11.46.28.0/22"
      vpc    = "ap-southeast-1_delta"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_delta_octavus"}
    }
    "ap-southeast-1_epsilon_primus" = {
      cidr   = "11.48.0.0/22"
      vpc    = "ap-southeast-1_epsilon"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_epsilon_primus"}
    }
    "ap-southeast-1_epsilon_secundus" = {
      cidr   = "11.48.4.0/22"
      vpc    = "ap-southeast-1_epsilon"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_epsilon_secundus"}
    }
    "ap-southeast-1_epsilon_tertius" = {
      cidr   = "11.48.8.0/22"
      vpc    = "ap-southeast-1_epsilon"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_epsilon_tertius"}
    }
    "ap-southeast-1_epsilon_quartus" = {
      cidr   = "11.48.12.0/22"
      vpc    = "ap-southeast-1_epsilon"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_epsilon_quartus"}
    }
    "ap-southeast-1_epsilon_quintus" = {
      cidr   = "11.48.16.0/22"
      vpc    = "ap-southeast-1_epsilon"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_epsilon_quintus"}
    }
    "ap-southeast-1_epsilon_sextus" = {
      cidr   = "11.48.20.0/22"
      vpc    = "ap-southeast-1_epsilon"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_epsilon_sextus"}
    }
    "ap-southeast-1_epsilon_septimus" = {
      cidr   = "11.48.24.0/22"
      vpc    = "ap-southeast-1_epsilon"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_epsilon_septimus"}
    }
    "ap-southeast-1_epsilon_octavus" = {
      cidr   = "11.48.28.0/22"
      vpc    = "ap-southeast-1_epsilon"
      region = "ap-southeast-1"
      tags   = {"Name": "ap-southeast-1_epsilon_octavus"}
    }
    "ap-northeast-1_alpha_primus" = {
      cidr   = "11.50.0.0/22"
      vpc    = "ap-northeast-1_alpha"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_alpha_primus"}
    }
    "ap-northeast-1_alpha_secundus" = {
      cidr   = "11.50.4.0/22"
      vpc    = "ap-northeast-1_alpha"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_alpha_secundus"}
    }
    "ap-northeast-1_alpha_tertius" = {
      cidr   = "11.50.8.0/22"
      vpc    = "ap-northeast-1_alpha"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_alpha_tertius"}
    }
    "ap-northeast-1_alpha_quartus" = {
      cidr   = "11.50.12.0/22"
      vpc    = "ap-northeast-1_alpha"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_alpha_quartus"}
    }
    "ap-northeast-1_alpha_quintus" = {
      cidr   = "11.50.16.0/22"
      vpc    = "ap-northeast-1_alpha"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_alpha_quintus"}
    }
    "ap-northeast-1_alpha_sextus" = {
      cidr   = "11.50.20.0/22"
      vpc    = "ap-northeast-1_alpha"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_alpha_sextus"}
    }
    "ap-northeast-1_alpha_septimus" = {
      cidr   = "11.50.24.0/22"
      vpc    = "ap-northeast-1_alpha"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_alpha_septimus"}
    }
    "ap-northeast-1_alpha_octavus" = {
      cidr   = "11.50.28.0/22"
      vpc    = "ap-northeast-1_alpha"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_alpha_octavus"}
    }
    "ap-northeast-1_beta_primus" = {
      cidr   = "11.52.0.0/22"
      vpc    = "ap-northeast-1_beta"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_beta_primus"}
    }
    "ap-northeast-1_beta_secundus" = {
      cidr   = "11.52.4.0/22"
      vpc    = "ap-northeast-1_beta"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_beta_secundus"}
    }
    "ap-northeast-1_beta_tertius" = {
      cidr   = "11.52.8.0/22"
      vpc    = "ap-northeast-1_beta"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_beta_tertius"}
    }
    "ap-northeast-1_beta_quartus" = {
      cidr   = "11.52.12.0/22"
      vpc    = "ap-northeast-1_beta"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_beta_quartus"}
    }
    "ap-northeast-1_beta_quintus" = {
      cidr   = "11.52.16.0/22"
      vpc    = "ap-northeast-1_beta"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_beta_quintus"}
    }
    "ap-northeast-1_beta_sextus" = {
      cidr   = "11.52.20.0/22"
      vpc    = "ap-northeast-1_beta"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_beta_sextus"}
    }
    "ap-northeast-1_beta_septimus" = {
      cidr   = "11.52.24.0/22"
      vpc    = "ap-northeast-1_beta"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_beta_septimus"}
    }
    "ap-northeast-1_beta_octavus" = {
      cidr   = "11.52.28.0/22"
      vpc    = "ap-northeast-1_beta"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_beta_octavus"}
    }
    "ap-northeast-1_gamma_primus" = {
      cidr   = "11.54.0.0/22"
      vpc    = "ap-northeast-1_gamma"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_gamma_primus"}
    }
    "ap-northeast-1_gamma_secundus" = {
      cidr   = "11.54.4.0/22"
      vpc    = "ap-northeast-1_gamma"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_gamma_secundus"}
    }
    "ap-northeast-1_gamma_tertius" = {
      cidr   = "11.54.8.0/22"
      vpc    = "ap-northeast-1_gamma"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_gamma_tertius"}
    }
    "ap-northeast-1_gamma_quartus" = {
      cidr   = "11.54.12.0/22"
      vpc    = "ap-northeast-1_gamma"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_gamma_quartus"}
    }
    "ap-northeast-1_gamma_quintus" = {
      cidr   = "11.54.16.0/22"
      vpc    = "ap-northeast-1_gamma"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_gamma_quintus"}
    }
    "ap-northeast-1_gamma_sextus" = {
      cidr   = "11.54.20.0/22"
      vpc    = "ap-northeast-1_gamma"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_gamma_sextus"}
    }
    "ap-northeast-1_gamma_septimus" = {
      cidr   = "11.54.24.0/22"
      vpc    = "ap-northeast-1_gamma"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_gamma_septimus"}
    }
    "ap-northeast-1_gamma_octavus" = {
      cidr   = "11.54.28.0/22"
      vpc    = "ap-northeast-1_gamma"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_gamma_octavus"}
    }
    "ap-northeast-1_delta_primus" = {
      cidr   = "11.56.0.0/22"
      vpc    = "ap-northeast-1_delta"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_delta_primus"}
    }
    "ap-northeast-1_delta_secundus" = {
      cidr   = "11.56.4.0/22"
      vpc    = "ap-northeast-1_delta"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_delta_secundus"}
    }
    "ap-northeast-1_delta_tertius" = {
      cidr   = "11.56.8.0/22"
      vpc    = "ap-northeast-1_delta"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_delta_tertius"}
    }
    "ap-northeast-1_delta_quartus" = {
      cidr   = "11.56.12.0/22"
      vpc    = "ap-northeast-1_delta"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_delta_quartus"}
    }
    "ap-northeast-1_delta_quintus" = {
      cidr   = "11.56.16.0/22"
      vpc    = "ap-northeast-1_delta"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_delta_quintus"}
    }
    "ap-northeast-1_delta_sextus" = {
      cidr   = "11.56.20.0/22"
      vpc    = "ap-northeast-1_delta"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_delta_sextus"}
    }
    "ap-northeast-1_delta_septimus" = {
      cidr   = "11.56.24.0/22"
      vpc    = "ap-northeast-1_delta"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_delta_septimus"}
    }
    "ap-northeast-1_delta_octavus" = {
      cidr   = "11.56.28.0/22"
      vpc    = "ap-northeast-1_delta"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_delta_octavus"}
    }
    "ap-northeast-1_epsilon_primus" = {
      cidr   = "11.58.0.0/22"
      vpc    = "ap-northeast-1_epsilon"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_epsilon_primus"}
    }
    "ap-northeast-1_epsilon_secundus" = {
      cidr   = "11.58.4.0/22"
      vpc    = "ap-northeast-1_epsilon"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_epsilon_secundus"}
    }
    "ap-northeast-1_epsilon_tertius" = {
      cidr   = "11.58.8.0/22"
      vpc    = "ap-northeast-1_epsilon"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_epsilon_tertius"}
    }
    "ap-northeast-1_epsilon_quartus" = {
      cidr   = "11.58.12.0/22"
      vpc    = "ap-northeast-1_epsilon"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_epsilon_quartus"}
    }
    "ap-northeast-1_epsilon_quintus" = {
      cidr   = "11.58.16.0/22"
      vpc    = "ap-northeast-1_epsilon"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_epsilon_quintus"}
    }
    "ap-northeast-1_epsilon_sextus" = {
      cidr   = "11.58.20.0/22"
      vpc    = "ap-northeast-1_epsilon"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_epsilon_sextus"}
    }
    "ap-northeast-1_epsilon_septimus" = {
      cidr   = "11.58.24.0/22"
      vpc    = "ap-northeast-1_epsilon"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_epsilon_septimus"}
    }
    "ap-northeast-1_epsilon_octavus" = {
      cidr   = "11.58.28.0/22"
      vpc    = "ap-northeast-1_epsilon"
      region = "ap-northeast-1"
      tags   = {"Name": "ap-northeast-1_epsilon_octavus"}
    }
    "eu-central-1_alpha_primus" = {
      cidr   = "11.60.0.0/22"
      vpc    = "eu-central-1_alpha"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_alpha_primus"}
    }
    "eu-central-1_alpha_secundus" = {
      cidr   = "11.60.4.0/22"
      vpc    = "eu-central-1_alpha"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_alpha_secundus"}
    }
    "eu-central-1_alpha_tertius" = {
      cidr   = "11.60.8.0/22"
      vpc    = "eu-central-1_alpha"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_alpha_tertius"}
    }
    "eu-central-1_alpha_quartus" = {
      cidr   = "11.60.12.0/22"
      vpc    = "eu-central-1_alpha"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_alpha_quartus"}
    }
    "eu-central-1_alpha_quintus" = {
      cidr   = "11.60.16.0/22"
      vpc    = "eu-central-1_alpha"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_alpha_quintus"}
    }
    "eu-central-1_alpha_sextus" = {
      cidr   = "11.60.20.0/22"
      vpc    = "eu-central-1_alpha"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_alpha_sextus"}
    }
    "eu-central-1_alpha_septimus" = {
      cidr   = "11.60.24.0/22"
      vpc    = "eu-central-1_alpha"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_alpha_septimus"}
    }
    "eu-central-1_alpha_octavus" = {
      cidr   = "11.60.28.0/22"
      vpc    = "eu-central-1_alpha"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_alpha_octavus"}
    }
    "eu-central-1_beta_primus" = {
      cidr   = "11.62.0.0/22"
      vpc    = "eu-central-1_beta"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_beta_primus"}
    }
    "eu-central-1_beta_secundus" = {
      cidr   = "11.62.4.0/22"
      vpc    = "eu-central-1_beta"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_beta_secundus"}
    }
    "eu-central-1_beta_tertius" = {
      cidr   = "11.62.8.0/22"
      vpc    = "eu-central-1_beta"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_beta_tertius"}
    }
    "eu-central-1_beta_quartus" = {
      cidr   = "11.62.12.0/22"
      vpc    = "eu-central-1_beta"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_beta_quartus"}
    }
    "eu-central-1_beta_quintus" = {
      cidr   = "11.62.16.0/22"
      vpc    = "eu-central-1_beta"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_beta_quintus"}
    }
    "eu-central-1_beta_sextus" = {
      cidr   = "11.62.20.0/22"
      vpc    = "eu-central-1_beta"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_beta_sextus"}
    }
    "eu-central-1_beta_septimus" = {
      cidr   = "11.62.24.0/22"
      vpc    = "eu-central-1_beta"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_beta_septimus"}
    }
    "eu-central-1_beta_octavus" = {
      cidr   = "11.62.28.0/22"
      vpc    = "eu-central-1_beta"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_beta_octavus"}
    }
    "eu-central-1_gamma_primus" = {
      cidr   = "11.64.0.0/22"
      vpc    = "eu-central-1_gamma"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_gamma_primus"}
    }
    "eu-central-1_gamma_secundus" = {
      cidr   = "11.64.4.0/22"
      vpc    = "eu-central-1_gamma"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_gamma_secundus"}
    }
    "eu-central-1_gamma_tertius" = {
      cidr   = "11.64.8.0/22"
      vpc    = "eu-central-1_gamma"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_gamma_tertius"}
    }
    "eu-central-1_gamma_quartus" = {
      cidr   = "11.64.12.0/22"
      vpc    = "eu-central-1_gamma"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_gamma_quartus"}
    }
    "eu-central-1_gamma_quintus" = {
      cidr   = "11.64.16.0/22"
      vpc    = "eu-central-1_gamma"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_gamma_quintus"}
    }
    "eu-central-1_gamma_sextus" = {
      cidr   = "11.64.20.0/22"
      vpc    = "eu-central-1_gamma"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_gamma_sextus"}
    }
    "eu-central-1_gamma_septimus" = {
      cidr   = "11.64.24.0/22"
      vpc    = "eu-central-1_gamma"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_gamma_septimus"}
    }
    "eu-central-1_gamma_octavus" = {
      cidr   = "11.64.28.0/22"
      vpc    = "eu-central-1_gamma"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_gamma_octavus"}
    }
    "eu-central-1_delta_primus" = {
      cidr   = "11.66.0.0/22"
      vpc    = "eu-central-1_delta"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_delta_primus"}
    }
    "eu-central-1_delta_secundus" = {
      cidr   = "11.66.4.0/22"
      vpc    = "eu-central-1_delta"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_delta_secundus"}
    }
    "eu-central-1_delta_tertius" = {
      cidr   = "11.66.8.0/22"
      vpc    = "eu-central-1_delta"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_delta_tertius"}
    }
    "eu-central-1_delta_quartus" = {
      cidr   = "11.66.12.0/22"
      vpc    = "eu-central-1_delta"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_delta_quartus"}
    }
    "eu-central-1_delta_quintus" = {
      cidr   = "11.66.16.0/22"
      vpc    = "eu-central-1_delta"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_delta_quintus"}
    }
    "eu-central-1_delta_sextus" = {
      cidr   = "11.66.20.0/22"
      vpc    = "eu-central-1_delta"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_delta_sextus"}
    }
    "eu-central-1_delta_septimus" = {
      cidr   = "11.66.24.0/22"
      vpc    = "eu-central-1_delta"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_delta_septimus"}
    }
    "eu-central-1_delta_octavus" = {
      cidr   = "11.66.28.0/22"
      vpc    = "eu-central-1_delta"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_delta_octavus"}
    }
    "eu-central-1_epsilon_primus" = {
      cidr   = "11.68.0.0/22"
      vpc    = "eu-central-1_epsilon"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_epsilon_primus"}
    }
    "eu-central-1_epsilon_secundus" = {
      cidr   = "11.68.4.0/22"
      vpc    = "eu-central-1_epsilon"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_epsilon_secundus"}
    }
    "eu-central-1_epsilon_tertius" = {
      cidr   = "11.68.8.0/22"
      vpc    = "eu-central-1_epsilon"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_epsilon_tertius"}
    }
    "eu-central-1_epsilon_quartus" = {
      cidr   = "11.68.12.0/22"
      vpc    = "eu-central-1_epsilon"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_epsilon_quartus"}
    }
    "eu-central-1_epsilon_quintus" = {
      cidr   = "11.68.16.0/22"
      vpc    = "eu-central-1_epsilon"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_epsilon_quintus"}
    }
    "eu-central-1_epsilon_sextus" = {
      cidr   = "11.68.20.0/22"
      vpc    = "eu-central-1_epsilon"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_epsilon_sextus"}
    }
    "eu-central-1_epsilon_septimus" = {
      cidr   = "11.68.24.0/22"
      vpc    = "eu-central-1_epsilon"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_epsilon_septimus"}
    }
    "eu-central-1_epsilon_octavus" = {
      cidr   = "11.68.28.0/22"
      vpc    = "eu-central-1_epsilon"
      region = "eu-central-1"
      tags   = {"Name": "eu-central-1_epsilon_octavus"}
    }
    "ap-southeast-2_alpha_primus" = {
      cidr   = "11.70.0.0/22"
      vpc    = "ap-southeast-2_alpha"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_alpha_primus"}
    }
    "ap-southeast-2_alpha_secundus" = {
      cidr   = "11.70.4.0/22"
      vpc    = "ap-southeast-2_alpha"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_alpha_secundus"}
    }
    "ap-southeast-2_alpha_tertius" = {
      cidr   = "11.70.8.0/22"
      vpc    = "ap-southeast-2_alpha"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_alpha_tertius"}
    }
    "ap-southeast-2_alpha_quartus" = {
      cidr   = "11.70.12.0/22"
      vpc    = "ap-southeast-2_alpha"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_alpha_quartus"}
    }
    "ap-southeast-2_alpha_quintus" = {
      cidr   = "11.70.16.0/22"
      vpc    = "ap-southeast-2_alpha"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_alpha_quintus"}
    }
    "ap-southeast-2_alpha_sextus" = {
      cidr   = "11.70.20.0/22"
      vpc    = "ap-southeast-2_alpha"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_alpha_sextus"}
    }
    "ap-southeast-2_alpha_septimus" = {
      cidr   = "11.70.24.0/22"
      vpc    = "ap-southeast-2_alpha"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_alpha_septimus"}
    }
    "ap-southeast-2_alpha_octavus" = {
      cidr   = "11.70.28.0/22"
      vpc    = "ap-southeast-2_alpha"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_alpha_octavus"}
    }
    "ap-southeast-2_beta_primus" = {
      cidr   = "11.72.0.0/22"
      vpc    = "ap-southeast-2_beta"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_beta_primus"}
    }
    "ap-southeast-2_beta_secundus" = {
      cidr   = "11.72.4.0/22"
      vpc    = "ap-southeast-2_beta"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_beta_secundus"}
    }
    "ap-southeast-2_beta_tertius" = {
      cidr   = "11.72.8.0/22"
      vpc    = "ap-southeast-2_beta"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_beta_tertius"}
    }
    "ap-southeast-2_beta_quartus" = {
      cidr   = "11.72.12.0/22"
      vpc    = "ap-southeast-2_beta"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_beta_quartus"}
    }
    "ap-southeast-2_beta_quintus" = {
      cidr   = "11.72.16.0/22"
      vpc    = "ap-southeast-2_beta"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_beta_quintus"}
    }
    "ap-southeast-2_beta_sextus" = {
      cidr   = "11.72.20.0/22"
      vpc    = "ap-southeast-2_beta"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_beta_sextus"}
    }
    "ap-southeast-2_beta_septimus" = {
      cidr   = "11.72.24.0/22"
      vpc    = "ap-southeast-2_beta"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_beta_septimus"}
    }
    "ap-southeast-2_beta_octavus" = {
      cidr   = "11.72.28.0/22"
      vpc    = "ap-southeast-2_beta"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_beta_octavus"}
    }
    "ap-southeast-2_gamma_primus" = {
      cidr   = "11.74.0.0/22"
      vpc    = "ap-southeast-2_gamma"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_gamma_primus"}
    }
    "ap-southeast-2_gamma_secundus" = {
      cidr   = "11.74.4.0/22"
      vpc    = "ap-southeast-2_gamma"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_gamma_secundus"}
    }
    "ap-southeast-2_gamma_tertius" = {
      cidr   = "11.74.8.0/22"
      vpc    = "ap-southeast-2_gamma"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_gamma_tertius"}
    }
    "ap-southeast-2_gamma_quartus" = {
      cidr   = "11.74.12.0/22"
      vpc    = "ap-southeast-2_gamma"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_gamma_quartus"}
    }
    "ap-southeast-2_gamma_quintus" = {
      cidr   = "11.74.16.0/22"
      vpc    = "ap-southeast-2_gamma"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_gamma_quintus"}
    }
    "ap-southeast-2_gamma_sextus" = {
      cidr   = "11.74.20.0/22"
      vpc    = "ap-southeast-2_gamma"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_gamma_sextus"}
    }
    "ap-southeast-2_gamma_septimus" = {
      cidr   = "11.74.24.0/22"
      vpc    = "ap-southeast-2_gamma"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_gamma_septimus"}
    }
    "ap-southeast-2_gamma_octavus" = {
      cidr   = "11.74.28.0/22"
      vpc    = "ap-southeast-2_gamma"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_gamma_octavus"}
    }
    "ap-southeast-2_delta_primus" = {
      cidr   = "11.76.0.0/22"
      vpc    = "ap-southeast-2_delta"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_delta_primus"}
    }
    "ap-southeast-2_delta_secundus" = {
      cidr   = "11.76.4.0/22"
      vpc    = "ap-southeast-2_delta"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_delta_secundus"}
    }
    "ap-southeast-2_delta_tertius" = {
      cidr   = "11.76.8.0/22"
      vpc    = "ap-southeast-2_delta"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_delta_tertius"}
    }
    "ap-southeast-2_delta_quartus" = {
      cidr   = "11.76.12.0/22"
      vpc    = "ap-southeast-2_delta"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_delta_quartus"}
    }
    "ap-southeast-2_delta_quintus" = {
      cidr   = "11.76.16.0/22"
      vpc    = "ap-southeast-2_delta"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_delta_quintus"}
    }
    "ap-southeast-2_delta_sextus" = {
      cidr   = "11.76.20.0/22"
      vpc    = "ap-southeast-2_delta"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_delta_sextus"}
    }
    "ap-southeast-2_delta_septimus" = {
      cidr   = "11.76.24.0/22"
      vpc    = "ap-southeast-2_delta"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_delta_septimus"}
    }
    "ap-southeast-2_delta_octavus" = {
      cidr   = "11.76.28.0/22"
      vpc    = "ap-southeast-2_delta"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_delta_octavus"}
    }
    "ap-southeast-2_epsilon_primus" = {
      cidr   = "11.78.0.0/22"
      vpc    = "ap-southeast-2_epsilon"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_epsilon_primus"}
    }
    "ap-southeast-2_epsilon_secundus" = {
      cidr   = "11.78.4.0/22"
      vpc    = "ap-southeast-2_epsilon"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_epsilon_secundus"}
    }
    "ap-southeast-2_epsilon_tertius" = {
      cidr   = "11.78.8.0/22"
      vpc    = "ap-southeast-2_epsilon"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_epsilon_tertius"}
    }
    "ap-southeast-2_epsilon_quartus" = {
      cidr   = "11.78.12.0/22"
      vpc    = "ap-southeast-2_epsilon"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_epsilon_quartus"}
    }
    "ap-southeast-2_epsilon_quintus" = {
      cidr   = "11.78.16.0/22"
      vpc    = "ap-southeast-2_epsilon"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_epsilon_quintus"}
    }
    "ap-southeast-2_epsilon_sextus" = {
      cidr   = "11.78.20.0/22"
      vpc    = "ap-southeast-2_epsilon"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_epsilon_sextus"}
    }
    "ap-southeast-2_epsilon_septimus" = {
      cidr   = "11.78.24.0/22"
      vpc    = "ap-southeast-2_epsilon"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_epsilon_septimus"}
    }
    "ap-southeast-2_epsilon_octavus" = {
      cidr   = "11.78.28.0/22"
      vpc    = "ap-southeast-2_epsilon"
      region = "ap-southeast-2"
      tags   = {"Name": "ap-southeast-2_epsilon_octavus"}
    }
    "sa-east-1_alpha_primus" = {
      cidr   = "11.80.0.0/22"
      vpc    = "sa-east-1_alpha"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_alpha_primus"}
    }
    "sa-east-1_alpha_secundus" = {
      cidr   = "11.80.4.0/22"
      vpc    = "sa-east-1_alpha"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_alpha_secundus"}
    }
    "sa-east-1_alpha_tertius" = {
      cidr   = "11.80.8.0/22"
      vpc    = "sa-east-1_alpha"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_alpha_tertius"}
    }
    "sa-east-1_alpha_quartus" = {
      cidr   = "11.80.12.0/22"
      vpc    = "sa-east-1_alpha"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_alpha_quartus"}
    }
    "sa-east-1_alpha_quintus" = {
      cidr   = "11.80.16.0/22"
      vpc    = "sa-east-1_alpha"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_alpha_quintus"}
    }
    "sa-east-1_alpha_sextus" = {
      cidr   = "11.80.20.0/22"
      vpc    = "sa-east-1_alpha"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_alpha_sextus"}
    }
    "sa-east-1_alpha_septimus" = {
      cidr   = "11.80.24.0/22"
      vpc    = "sa-east-1_alpha"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_alpha_septimus"}
    }
    "sa-east-1_alpha_octavus" = {
      cidr   = "11.80.28.0/22"
      vpc    = "sa-east-1_alpha"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_alpha_octavus"}
    }
    "sa-east-1_beta_primus" = {
      cidr   = "11.82.0.0/22"
      vpc    = "sa-east-1_beta"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_beta_primus"}
    }
    "sa-east-1_beta_secundus" = {
      cidr   = "11.82.4.0/22"
      vpc    = "sa-east-1_beta"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_beta_secundus"}
    }
    "sa-east-1_beta_tertius" = {
      cidr   = "11.82.8.0/22"
      vpc    = "sa-east-1_beta"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_beta_tertius"}
    }
    "sa-east-1_beta_quartus" = {
      cidr   = "11.82.12.0/22"
      vpc    = "sa-east-1_beta"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_beta_quartus"}
    }
    "sa-east-1_beta_quintus" = {
      cidr   = "11.82.16.0/22"
      vpc    = "sa-east-1_beta"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_beta_quintus"}
    }
    "sa-east-1_beta_sextus" = {
      cidr   = "11.82.20.0/22"
      vpc    = "sa-east-1_beta"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_beta_sextus"}
    }
    "sa-east-1_beta_septimus" = {
      cidr   = "11.82.24.0/22"
      vpc    = "sa-east-1_beta"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_beta_septimus"}
    }
    "sa-east-1_beta_octavus" = {
      cidr   = "11.82.28.0/22"
      vpc    = "sa-east-1_beta"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_beta_octavus"}
    }
    "sa-east-1_gamma_primus" = {
      cidr   = "11.84.0.0/22"
      vpc    = "sa-east-1_gamma"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_gamma_primus"}
    }
    "sa-east-1_gamma_secundus" = {
      cidr   = "11.84.4.0/22"
      vpc    = "sa-east-1_gamma"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_gamma_secundus"}
    }
    "sa-east-1_gamma_tertius" = {
      cidr   = "11.84.8.0/22"
      vpc    = "sa-east-1_gamma"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_gamma_tertius"}
    }
    "sa-east-1_gamma_quartus" = {
      cidr   = "11.84.12.0/22"
      vpc    = "sa-east-1_gamma"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_gamma_quartus"}
    }
    "sa-east-1_gamma_quintus" = {
      cidr   = "11.84.16.0/22"
      vpc    = "sa-east-1_gamma"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_gamma_quintus"}
    }
    "sa-east-1_gamma_sextus" = {
      cidr   = "11.84.20.0/22"
      vpc    = "sa-east-1_gamma"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_gamma_sextus"}
    }
    "sa-east-1_gamma_septimus" = {
      cidr   = "11.84.24.0/22"
      vpc    = "sa-east-1_gamma"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_gamma_septimus"}
    }
    "sa-east-1_gamma_octavus" = {
      cidr   = "11.84.28.0/22"
      vpc    = "sa-east-1_gamma"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_gamma_octavus"}
    }
    "sa-east-1_delta_primus" = {
      cidr   = "11.86.0.0/22"
      vpc    = "sa-east-1_delta"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_delta_primus"}
    }
    "sa-east-1_delta_secundus" = {
      cidr   = "11.86.4.0/22"
      vpc    = "sa-east-1_delta"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_delta_secundus"}
    }
    "sa-east-1_delta_tertius" = {
      cidr   = "11.86.8.0/22"
      vpc    = "sa-east-1_delta"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_delta_tertius"}
    }
    "sa-east-1_delta_quartus" = {
      cidr   = "11.86.12.0/22"
      vpc    = "sa-east-1_delta"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_delta_quartus"}
    }
    "sa-east-1_delta_quintus" = {
      cidr   = "11.86.16.0/22"
      vpc    = "sa-east-1_delta"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_delta_quintus"}
    }
    "sa-east-1_delta_sextus" = {
      cidr   = "11.86.20.0/22"
      vpc    = "sa-east-1_delta"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_delta_sextus"}
    }
    "sa-east-1_delta_septimus" = {
      cidr   = "11.86.24.0/22"
      vpc    = "sa-east-1_delta"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_delta_septimus"}
    }
    "sa-east-1_delta_octavus" = {
      cidr   = "11.86.28.0/22"
      vpc    = "sa-east-1_delta"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_delta_octavus"}
    }
    "sa-east-1_epsilon_primus" = {
      cidr   = "11.88.0.0/22"
      vpc    = "sa-east-1_epsilon"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_epsilon_primus"}
    }
    "sa-east-1_epsilon_secundus" = {
      cidr   = "11.88.4.0/22"
      vpc    = "sa-east-1_epsilon"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_epsilon_secundus"}
    }
    "sa-east-1_epsilon_tertius" = {
      cidr   = "11.88.8.0/22"
      vpc    = "sa-east-1_epsilon"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_epsilon_tertius"}
    }
    "sa-east-1_epsilon_quartus" = {
      cidr   = "11.88.12.0/22"
      vpc    = "sa-east-1_epsilon"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_epsilon_quartus"}
    }
    "sa-east-1_epsilon_quintus" = {
      cidr   = "11.88.16.0/22"
      vpc    = "sa-east-1_epsilon"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_epsilon_quintus"}
    }
    "sa-east-1_epsilon_sextus" = {
      cidr   = "11.88.20.0/22"
      vpc    = "sa-east-1_epsilon"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_epsilon_sextus"}
    }
    "sa-east-1_epsilon_septimus" = {
      cidr   = "11.88.24.0/22"
      vpc    = "sa-east-1_epsilon"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_epsilon_septimus"}
    }
    "sa-east-1_epsilon_octavus" = {
      cidr   = "11.88.28.0/22"
      vpc    = "sa-east-1_epsilon"
      region = "sa-east-1"
      tags   = {"Name": "sa-east-1_epsilon_octavus"}
    }
    "af-south-1_alpha_primus" = {
      cidr   = "11.90.0.0/22"
      vpc    = "af-south-1_alpha"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_alpha_primus"}
    }
    "af-south-1_alpha_secundus" = {
      cidr   = "11.90.4.0/22"
      vpc    = "af-south-1_alpha"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_alpha_secundus"}
    }
    "af-south-1_alpha_tertius" = {
      cidr   = "11.90.8.0/22"
      vpc    = "af-south-1_alpha"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_alpha_tertius"}
    }
    "af-south-1_alpha_quartus" = {
      cidr   = "11.90.12.0/22"
      vpc    = "af-south-1_alpha"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_alpha_quartus"}
    }
    "af-south-1_alpha_quintus" = {
      cidr   = "11.90.16.0/22"
      vpc    = "af-south-1_alpha"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_alpha_quintus"}
    }
    "af-south-1_alpha_sextus" = {
      cidr   = "11.90.20.0/22"
      vpc    = "af-south-1_alpha"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_alpha_sextus"}
    }
    "af-south-1_alpha_septimus" = {
      cidr   = "11.90.24.0/22"
      vpc    = "af-south-1_alpha"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_alpha_septimus"}
    }
    "af-south-1_alpha_octavus" = {
      cidr   = "11.90.28.0/22"
      vpc    = "af-south-1_alpha"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_alpha_octavus"}
    }
    "af-south-1_beta_primus" = {
      cidr   = "11.92.0.0/22"
      vpc    = "af-south-1_beta"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_beta_primus"}
    }
    "af-south-1_beta_secundus" = {
      cidr   = "11.92.4.0/22"
      vpc    = "af-south-1_beta"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_beta_secundus"}
    }
    "af-south-1_beta_tertius" = {
      cidr   = "11.92.8.0/22"
      vpc    = "af-south-1_beta"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_beta_tertius"}
    }
    "af-south-1_beta_quartus" = {
      cidr   = "11.92.12.0/22"
      vpc    = "af-south-1_beta"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_beta_quartus"}
    }
    "af-south-1_beta_quintus" = {
      cidr   = "11.92.16.0/22"
      vpc    = "af-south-1_beta"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_beta_quintus"}
    }
    "af-south-1_beta_sextus" = {
      cidr   = "11.92.20.0/22"
      vpc    = "af-south-1_beta"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_beta_sextus"}
    }
    "af-south-1_beta_septimus" = {
      cidr   = "11.92.24.0/22"
      vpc    = "af-south-1_beta"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_beta_septimus"}
    }
    "af-south-1_beta_octavus" = {
      cidr   = "11.92.28.0/22"
      vpc    = "af-south-1_beta"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_beta_octavus"}
    }
    "af-south-1_gamma_primus" = {
      cidr   = "11.94.0.0/22"
      vpc    = "af-south-1_gamma"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_gamma_primus"}
    }
    "af-south-1_gamma_secundus" = {
      cidr   = "11.94.4.0/22"
      vpc    = "af-south-1_gamma"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_gamma_secundus"}
    }
    "af-south-1_gamma_tertius" = {
      cidr   = "11.94.8.0/22"
      vpc    = "af-south-1_gamma"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_gamma_tertius"}
    }
    "af-south-1_gamma_quartus" = {
      cidr   = "11.94.12.0/22"
      vpc    = "af-south-1_gamma"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_gamma_quartus"}
    }
    "af-south-1_gamma_quintus" = {
      cidr   = "11.94.16.0/22"
      vpc    = "af-south-1_gamma"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_gamma_quintus"}
    }
    "af-south-1_gamma_sextus" = {
      cidr   = "11.94.20.0/22"
      vpc    = "af-south-1_gamma"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_gamma_sextus"}
    }
    "af-south-1_gamma_septimus" = {
      cidr   = "11.94.24.0/22"
      vpc    = "af-south-1_gamma"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_gamma_septimus"}
    }
    "af-south-1_gamma_octavus" = {
      cidr   = "11.94.28.0/22"
      vpc    = "af-south-1_gamma"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_gamma_octavus"}
    }
    "af-south-1_delta_primus" = {
      cidr   = "11.96.0.0/22"
      vpc    = "af-south-1_delta"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_delta_primus"}
    }
    "af-south-1_delta_secundus" = {
      cidr   = "11.96.4.0/22"
      vpc    = "af-south-1_delta"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_delta_secundus"}
    }
    "af-south-1_delta_tertius" = {
      cidr   = "11.96.8.0/22"
      vpc    = "af-south-1_delta"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_delta_tertius"}
    }
    "af-south-1_delta_quartus" = {
      cidr   = "11.96.12.0/22"
      vpc    = "af-south-1_delta"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_delta_quartus"}
    }
    "af-south-1_delta_quintus" = {
      cidr   = "11.96.16.0/22"
      vpc    = "af-south-1_delta"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_delta_quintus"}
    }
    "af-south-1_delta_sextus" = {
      cidr   = "11.96.20.0/22"
      vpc    = "af-south-1_delta"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_delta_sextus"}
    }
    "af-south-1_delta_septimus" = {
      cidr   = "11.96.24.0/22"
      vpc    = "af-south-1_delta"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_delta_septimus"}
    }
    "af-south-1_delta_octavus" = {
      cidr   = "11.96.28.0/22"
      vpc    = "af-south-1_delta"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_delta_octavus"}
    }
    "af-south-1_epsilon_primus" = {
      cidr   = "11.98.0.0/22"
      vpc    = "af-south-1_epsilon"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_epsilon_primus"}
    }
    "af-south-1_epsilon_secundus" = {
      cidr   = "11.98.4.0/22"
      vpc    = "af-south-1_epsilon"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_epsilon_secundus"}
    }
    "af-south-1_epsilon_tertius" = {
      cidr   = "11.98.8.0/22"
      vpc    = "af-south-1_epsilon"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_epsilon_tertius"}
    }
    "af-south-1_epsilon_quartus" = {
      cidr   = "11.98.12.0/22"
      vpc    = "af-south-1_epsilon"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_epsilon_quartus"}
    }
    "af-south-1_epsilon_quintus" = {
      cidr   = "11.98.16.0/22"
      vpc    = "af-south-1_epsilon"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_epsilon_quintus"}
    }
    "af-south-1_epsilon_sextus" = {
      cidr   = "11.98.20.0/22"
      vpc    = "af-south-1_epsilon"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_epsilon_sextus"}
    }
    "af-south-1_epsilon_septimus" = {
      cidr   = "11.98.24.0/22"
      vpc    = "af-south-1_epsilon"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_epsilon_septimus"}
    }
    "af-south-1_epsilon_octavus" = {
      cidr   = "11.98.28.0/22"
      vpc    = "af-south-1_epsilon"
      region = "af-south-1"
      tags   = {"Name": "af-south-1_epsilon_octavus"}
    }
    "me-central-1_alpha_primus" = {
      cidr   = "11.100.0.0/22"
      vpc    = "me-central-1_alpha"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_alpha_primus"}
    }
    "me-central-1_alpha_secundus" = {
      cidr   = "11.100.4.0/22"
      vpc    = "me-central-1_alpha"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_alpha_secundus"}
    }
    "me-central-1_alpha_tertius" = {
      cidr   = "11.100.8.0/22"
      vpc    = "me-central-1_alpha"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_alpha_tertius"}
    }
    "me-central-1_alpha_quartus" = {
      cidr   = "11.100.12.0/22"
      vpc    = "me-central-1_alpha"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_alpha_quartus"}
    }
    "me-central-1_alpha_quintus" = {
      cidr   = "11.100.16.0/22"
      vpc    = "me-central-1_alpha"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_alpha_quintus"}
    }
    "me-central-1_alpha_sextus" = {
      cidr   = "11.100.20.0/22"
      vpc    = "me-central-1_alpha"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_alpha_sextus"}
    }
    "me-central-1_alpha_septimus" = {
      cidr   = "11.100.24.0/22"
      vpc    = "me-central-1_alpha"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_alpha_septimus"}
    }
    "me-central-1_alpha_octavus" = {
      cidr   = "11.100.28.0/22"
      vpc    = "me-central-1_alpha"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_alpha_octavus"}
    }
    "me-central-1_beta_primus" = {
      cidr   = "11.102.0.0/22"
      vpc    = "me-central-1_beta"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_beta_primus"}
    }
    "me-central-1_beta_secundus" = {
      cidr   = "11.102.4.0/22"
      vpc    = "me-central-1_beta"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_beta_secundus"}
    }
    "me-central-1_beta_tertius" = {
      cidr   = "11.102.8.0/22"
      vpc    = "me-central-1_beta"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_beta_tertius"}
    }
    "me-central-1_beta_quartus" = {
      cidr   = "11.102.12.0/22"
      vpc    = "me-central-1_beta"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_beta_quartus"}
    }
    "me-central-1_beta_quintus" = {
      cidr   = "11.102.16.0/22"
      vpc    = "me-central-1_beta"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_beta_quintus"}
    }
    "me-central-1_beta_sextus" = {
      cidr   = "11.102.20.0/22"
      vpc    = "me-central-1_beta"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_beta_sextus"}
    }
    "me-central-1_beta_septimus" = {
      cidr   = "11.102.24.0/22"
      vpc    = "me-central-1_beta"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_beta_septimus"}
    }
    "me-central-1_beta_octavus" = {
      cidr   = "11.102.28.0/22"
      vpc    = "me-central-1_beta"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_beta_octavus"}
    }
    "me-central-1_gamma_primus" = {
      cidr   = "11.104.0.0/22"
      vpc    = "me-central-1_gamma"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_gamma_primus"}
    }
    "me-central-1_gamma_secundus" = {
      cidr   = "11.104.4.0/22"
      vpc    = "me-central-1_gamma"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_gamma_secundus"}
    }
    "me-central-1_gamma_tertius" = {
      cidr   = "11.104.8.0/22"
      vpc    = "me-central-1_gamma"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_gamma_tertius"}
    }
    "me-central-1_gamma_quartus" = {
      cidr   = "11.104.12.0/22"
      vpc    = "me-central-1_gamma"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_gamma_quartus"}
    }
    "me-central-1_gamma_quintus" = {
      cidr   = "11.104.16.0/22"
      vpc    = "me-central-1_gamma"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_gamma_quintus"}
    }
    "me-central-1_gamma_sextus" = {
      cidr   = "11.104.20.0/22"
      vpc    = "me-central-1_gamma"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_gamma_sextus"}
    }
    "me-central-1_gamma_septimus" = {
      cidr   = "11.104.24.0/22"
      vpc    = "me-central-1_gamma"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_gamma_septimus"}
    }
    "me-central-1_gamma_octavus" = {
      cidr   = "11.104.28.0/22"
      vpc    = "me-central-1_gamma"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_gamma_octavus"}
    }
    "me-central-1_delta_primus" = {
      cidr   = "11.106.0.0/22"
      vpc    = "me-central-1_delta"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_delta_primus"}
    }
    "me-central-1_delta_secundus" = {
      cidr   = "11.106.4.0/22"
      vpc    = "me-central-1_delta"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_delta_secundus"}
    }
    "me-central-1_delta_tertius" = {
      cidr   = "11.106.8.0/22"
      vpc    = "me-central-1_delta"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_delta_tertius"}
    }
    "me-central-1_delta_quartus" = {
      cidr   = "11.106.12.0/22"
      vpc    = "me-central-1_delta"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_delta_quartus"}
    }
    "me-central-1_delta_quintus" = {
      cidr   = "11.106.16.0/22"
      vpc    = "me-central-1_delta"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_delta_quintus"}
    }
    "me-central-1_delta_sextus" = {
      cidr   = "11.106.20.0/22"
      vpc    = "me-central-1_delta"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_delta_sextus"}
    }
    "me-central-1_delta_septimus" = {
      cidr   = "11.106.24.0/22"
      vpc    = "me-central-1_delta"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_delta_septimus"}
    }
    "me-central-1_delta_octavus" = {
      cidr   = "11.106.28.0/22"
      vpc    = "me-central-1_delta"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_delta_octavus"}
    }
    "me-central-1_epsilon_primus" = {
      cidr   = "11.108.0.0/22"
      vpc    = "me-central-1_epsilon"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_epsilon_primus"}
    }
    "me-central-1_epsilon_secundus" = {
      cidr   = "11.108.4.0/22"
      vpc    = "me-central-1_epsilon"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_epsilon_secundus"}
    }
    "me-central-1_epsilon_tertius" = {
      cidr   = "11.108.8.0/22"
      vpc    = "me-central-1_epsilon"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_epsilon_tertius"}
    }
    "me-central-1_epsilon_quartus" = {
      cidr   = "11.108.12.0/22"
      vpc    = "me-central-1_epsilon"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_epsilon_quartus"}
    }
    "me-central-1_epsilon_quintus" = {
      cidr   = "11.108.16.0/22"
      vpc    = "me-central-1_epsilon"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_epsilon_quintus"}
    }
    "me-central-1_epsilon_sextus" = {
      cidr   = "11.108.20.0/22"
      vpc    = "me-central-1_epsilon"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_epsilon_sextus"}
    }
    "me-central-1_epsilon_septimus" = {
      cidr   = "11.108.24.0/22"
      vpc    = "me-central-1_epsilon"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_epsilon_septimus"}
    }
    "me-central-1_epsilon_octavus" = {
      cidr   = "11.108.28.0/22"
      vpc    = "me-central-1_epsilon"
      region = "me-central-1"
      tags   = {"Name": "me-central-1_epsilon_octavus"}
    }
    "ap-southeast-3_alpha_primus" = {
      cidr   = "11.110.0.0/22"
      vpc    = "ap-southeast-3_alpha"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_alpha_primus"}
    }
    "ap-southeast-3_alpha_secundus" = {
      cidr   = "11.110.4.0/22"
      vpc    = "ap-southeast-3_alpha"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_alpha_secundus"}
    }
    "ap-southeast-3_alpha_tertius" = {
      cidr   = "11.110.8.0/22"
      vpc    = "ap-southeast-3_alpha"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_alpha_tertius"}
    }
    "ap-southeast-3_alpha_quartus" = {
      cidr   = "11.110.12.0/22"
      vpc    = "ap-southeast-3_alpha"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_alpha_quartus"}
    }
    "ap-southeast-3_alpha_quintus" = {
      cidr   = "11.110.16.0/22"
      vpc    = "ap-southeast-3_alpha"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_alpha_quintus"}
    }
    "ap-southeast-3_alpha_sextus" = {
      cidr   = "11.110.20.0/22"
      vpc    = "ap-southeast-3_alpha"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_alpha_sextus"}
    }
    "ap-southeast-3_alpha_septimus" = {
      cidr   = "11.110.24.0/22"
      vpc    = "ap-southeast-3_alpha"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_alpha_septimus"}
    }
    "ap-southeast-3_alpha_octavus" = {
      cidr   = "11.110.28.0/22"
      vpc    = "ap-southeast-3_alpha"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_alpha_octavus"}
    }
    "ap-southeast-3_beta_primus" = {
      cidr   = "11.112.0.0/22"
      vpc    = "ap-southeast-3_beta"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_beta_primus"}
    }
    "ap-southeast-3_beta_secundus" = {
      cidr   = "11.112.4.0/22"
      vpc    = "ap-southeast-3_beta"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_beta_secundus"}
    }
    "ap-southeast-3_beta_tertius" = {
      cidr   = "11.112.8.0/22"
      vpc    = "ap-southeast-3_beta"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_beta_tertius"}
    }
    "ap-southeast-3_beta_quartus" = {
      cidr   = "11.112.12.0/22"
      vpc    = "ap-southeast-3_beta"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_beta_quartus"}
    }
    "ap-southeast-3_beta_quintus" = {
      cidr   = "11.112.16.0/22"
      vpc    = "ap-southeast-3_beta"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_beta_quintus"}
    }
    "ap-southeast-3_beta_sextus" = {
      cidr   = "11.112.20.0/22"
      vpc    = "ap-southeast-3_beta"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_beta_sextus"}
    }
    "ap-southeast-3_beta_septimus" = {
      cidr   = "11.112.24.0/22"
      vpc    = "ap-southeast-3_beta"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_beta_septimus"}
    }
    "ap-southeast-3_beta_octavus" = {
      cidr   = "11.112.28.0/22"
      vpc    = "ap-southeast-3_beta"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_beta_octavus"}
    }
    "ap-southeast-3_gamma_primus" = {
      cidr   = "11.114.0.0/22"
      vpc    = "ap-southeast-3_gamma"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_gamma_primus"}
    }
    "ap-southeast-3_gamma_secundus" = {
      cidr   = "11.114.4.0/22"
      vpc    = "ap-southeast-3_gamma"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_gamma_secundus"}
    }
    "ap-southeast-3_gamma_tertius" = {
      cidr   = "11.114.8.0/22"
      vpc    = "ap-southeast-3_gamma"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_gamma_tertius"}
    }
    "ap-southeast-3_gamma_quartus" = {
      cidr   = "11.114.12.0/22"
      vpc    = "ap-southeast-3_gamma"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_gamma_quartus"}
    }
    "ap-southeast-3_gamma_quintus" = {
      cidr   = "11.114.16.0/22"
      vpc    = "ap-southeast-3_gamma"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_gamma_quintus"}
    }
    "ap-southeast-3_gamma_sextus" = {
      cidr   = "11.114.20.0/22"
      vpc    = "ap-southeast-3_gamma"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_gamma_sextus"}
    }
    "ap-southeast-3_gamma_septimus" = {
      cidr   = "11.114.24.0/22"
      vpc    = "ap-southeast-3_gamma"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_gamma_septimus"}
    }
    "ap-southeast-3_gamma_octavus" = {
      cidr   = "11.114.28.0/22"
      vpc    = "ap-southeast-3_gamma"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_gamma_octavus"}
    }
    "ap-southeast-3_delta_primus" = {
      cidr   = "11.116.0.0/22"
      vpc    = "ap-southeast-3_delta"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_delta_primus"}
    }
    "ap-southeast-3_delta_secundus" = {
      cidr   = "11.116.4.0/22"
      vpc    = "ap-southeast-3_delta"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_delta_secundus"}
    }
    "ap-southeast-3_delta_tertius" = {
      cidr   = "11.116.8.0/22"
      vpc    = "ap-southeast-3_delta"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_delta_tertius"}
    }
    "ap-southeast-3_delta_quartus" = {
      cidr   = "11.116.12.0/22"
      vpc    = "ap-southeast-3_delta"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_delta_quartus"}
    }
    "ap-southeast-3_delta_quintus" = {
      cidr   = "11.116.16.0/22"
      vpc    = "ap-southeast-3_delta"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_delta_quintus"}
    }
    "ap-southeast-3_delta_sextus" = {
      cidr   = "11.116.20.0/22"
      vpc    = "ap-southeast-3_delta"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_delta_sextus"}
    }
    "ap-southeast-3_delta_septimus" = {
      cidr   = "11.116.24.0/22"
      vpc    = "ap-southeast-3_delta"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_delta_septimus"}
    }
    "ap-southeast-3_delta_octavus" = {
      cidr   = "11.116.28.0/22"
      vpc    = "ap-southeast-3_delta"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_delta_octavus"}
    }
    "ap-southeast-3_epsilon_primus" = {
      cidr   = "11.118.0.0/22"
      vpc    = "ap-southeast-3_epsilon"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_epsilon_primus"}
    }
    "ap-southeast-3_epsilon_secundus" = {
      cidr   = "11.118.4.0/22"
      vpc    = "ap-southeast-3_epsilon"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_epsilon_secundus"}
    }
    "ap-southeast-3_epsilon_tertius" = {
      cidr   = "11.118.8.0/22"
      vpc    = "ap-southeast-3_epsilon"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_epsilon_tertius"}
    }
    "ap-southeast-3_epsilon_quartus" = {
      cidr   = "11.118.12.0/22"
      vpc    = "ap-southeast-3_epsilon"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_epsilon_quartus"}
    }
    "ap-southeast-3_epsilon_quintus" = {
      cidr   = "11.118.16.0/22"
      vpc    = "ap-southeast-3_epsilon"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_epsilon_quintus"}
    }
    "ap-southeast-3_epsilon_sextus" = {
      cidr   = "11.118.20.0/22"
      vpc    = "ap-southeast-3_epsilon"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_epsilon_sextus"}
    }
    "ap-southeast-3_epsilon_septimus" = {
      cidr   = "11.118.24.0/22"
      vpc    = "ap-southeast-3_epsilon"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_epsilon_septimus"}
    }
    "ap-southeast-3_epsilon_octavus" = {
      cidr   = "11.118.28.0/22"
      vpc    = "ap-southeast-3_epsilon"
      region = "ap-southeast-3"
      tags   = {"Name": "ap-southeast-3_epsilon_octavus"}
    }
    "eu-west-3_alpha_primus" = {
      cidr   = "11.120.0.0/22"
      vpc    = "eu-west-3_alpha"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_alpha_primus"}
    }
    "eu-west-3_alpha_secundus" = {
      cidr   = "11.120.4.0/22"
      vpc    = "eu-west-3_alpha"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_alpha_secundus"}
    }
    "eu-west-3_alpha_tertius" = {
      cidr   = "11.120.8.0/22"
      vpc    = "eu-west-3_alpha"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_alpha_tertius"}
    }
    "eu-west-3_alpha_quartus" = {
      cidr   = "11.120.12.0/22"
      vpc    = "eu-west-3_alpha"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_alpha_quartus"}
    }
    "eu-west-3_alpha_quintus" = {
      cidr   = "11.120.16.0/22"
      vpc    = "eu-west-3_alpha"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_alpha_quintus"}
    }
    "eu-west-3_alpha_sextus" = {
      cidr   = "11.120.20.0/22"
      vpc    = "eu-west-3_alpha"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_alpha_sextus"}
    }
    "eu-west-3_alpha_septimus" = {
      cidr   = "11.120.24.0/22"
      vpc    = "eu-west-3_alpha"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_alpha_septimus"}
    }
    "eu-west-3_alpha_octavus" = {
      cidr   = "11.120.28.0/22"
      vpc    = "eu-west-3_alpha"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_alpha_octavus"}
    }
    "eu-west-3_beta_primus" = {
      cidr   = "11.122.0.0/22"
      vpc    = "eu-west-3_beta"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_beta_primus"}
    }
    "eu-west-3_beta_secundus" = {
      cidr   = "11.122.4.0/22"
      vpc    = "eu-west-3_beta"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_beta_secundus"}
    }
    "eu-west-3_beta_tertius" = {
      cidr   = "11.122.8.0/22"
      vpc    = "eu-west-3_beta"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_beta_tertius"}
    }
    "eu-west-3_beta_quartus" = {
      cidr   = "11.122.12.0/22"
      vpc    = "eu-west-3_beta"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_beta_quartus"}
    }
    "eu-west-3_beta_quintus" = {
      cidr   = "11.122.16.0/22"
      vpc    = "eu-west-3_beta"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_beta_quintus"}
    }
    "eu-west-3_beta_sextus" = {
      cidr   = "11.122.20.0/22"
      vpc    = "eu-west-3_beta"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_beta_sextus"}
    }
    "eu-west-3_beta_septimus" = {
      cidr   = "11.122.24.0/22"
      vpc    = "eu-west-3_beta"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_beta_septimus"}
    }
    "eu-west-3_beta_octavus" = {
      cidr   = "11.122.28.0/22"
      vpc    = "eu-west-3_beta"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_beta_octavus"}
    }
    "eu-west-3_gamma_primus" = {
      cidr   = "11.124.0.0/22"
      vpc    = "eu-west-3_gamma"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_gamma_primus"}
    }
    "eu-west-3_gamma_secundus" = {
      cidr   = "11.124.4.0/22"
      vpc    = "eu-west-3_gamma"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_gamma_secundus"}
    }
    "eu-west-3_gamma_tertius" = {
      cidr   = "11.124.8.0/22"
      vpc    = "eu-west-3_gamma"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_gamma_tertius"}
    }
    "eu-west-3_gamma_quartus" = {
      cidr   = "11.124.12.0/22"
      vpc    = "eu-west-3_gamma"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_gamma_quartus"}
    }
    "eu-west-3_gamma_quintus" = {
      cidr   = "11.124.16.0/22"
      vpc    = "eu-west-3_gamma"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_gamma_quintus"}
    }
    "eu-west-3_gamma_sextus" = {
      cidr   = "11.124.20.0/22"
      vpc    = "eu-west-3_gamma"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_gamma_sextus"}
    }
    "eu-west-3_gamma_septimus" = {
      cidr   = "11.124.24.0/22"
      vpc    = "eu-west-3_gamma"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_gamma_septimus"}
    }
    "eu-west-3_gamma_octavus" = {
      cidr   = "11.124.28.0/22"
      vpc    = "eu-west-3_gamma"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_gamma_octavus"}
    }
    "eu-west-3_delta_primus" = {
      cidr   = "11.126.0.0/22"
      vpc    = "eu-west-3_delta"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_delta_primus"}
    }
    "eu-west-3_delta_secundus" = {
      cidr   = "11.126.4.0/22"
      vpc    = "eu-west-3_delta"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_delta_secundus"}
    }
    "eu-west-3_delta_tertius" = {
      cidr   = "11.126.8.0/22"
      vpc    = "eu-west-3_delta"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_delta_tertius"}
    }
    "eu-west-3_delta_quartus" = {
      cidr   = "11.126.12.0/22"
      vpc    = "eu-west-3_delta"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_delta_quartus"}
    }
    "eu-west-3_delta_quintus" = {
      cidr   = "11.126.16.0/22"
      vpc    = "eu-west-3_delta"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_delta_quintus"}
    }
    "eu-west-3_delta_sextus" = {
      cidr   = "11.126.20.0/22"
      vpc    = "eu-west-3_delta"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_delta_sextus"}
    }
    "eu-west-3_delta_septimus" = {
      cidr   = "11.126.24.0/22"
      vpc    = "eu-west-3_delta"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_delta_septimus"}
    }
    "eu-west-3_delta_octavus" = {
      cidr   = "11.126.28.0/22"
      vpc    = "eu-west-3_delta"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_delta_octavus"}
    }
    "eu-west-3_epsilon_primus" = {
      cidr   = "11.128.0.0/22"
      vpc    = "eu-west-3_epsilon"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_epsilon_primus"}
    }
    "eu-west-3_epsilon_secundus" = {
      cidr   = "11.128.4.0/22"
      vpc    = "eu-west-3_epsilon"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_epsilon_secundus"}
    }
    "eu-west-3_epsilon_tertius" = {
      cidr   = "11.128.8.0/22"
      vpc    = "eu-west-3_epsilon"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_epsilon_tertius"}
    }
    "eu-west-3_epsilon_quartus" = {
      cidr   = "11.128.12.0/22"
      vpc    = "eu-west-3_epsilon"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_epsilon_quartus"}
    }
    "eu-west-3_epsilon_quintus" = {
      cidr   = "11.128.16.0/22"
      vpc    = "eu-west-3_epsilon"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_epsilon_quintus"}
    }
    "eu-west-3_epsilon_sextus" = {
      cidr   = "11.128.20.0/22"
      vpc    = "eu-west-3_epsilon"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_epsilon_sextus"}
    }
    "eu-west-3_epsilon_septimus" = {
      cidr   = "11.128.24.0/22"
      vpc    = "eu-west-3_epsilon"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_epsilon_septimus"}
    }
    "eu-west-3_epsilon_octavus" = {
      cidr   = "11.128.28.0/22"
      vpc    = "eu-west-3_epsilon"
      region = "eu-west-3"
      tags   = {"Name": "eu-west-3_epsilon_octavus"}
    }
    "eu-north-1_alpha_primus" = {
      cidr   = "11.130.0.0/22"
      vpc    = "eu-north-1_alpha"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_alpha_primus"}
    }
    "eu-north-1_alpha_secundus" = {
      cidr   = "11.130.4.0/22"
      vpc    = "eu-north-1_alpha"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_alpha_secundus"}
    }
    "eu-north-1_alpha_tertius" = {
      cidr   = "11.130.8.0/22"
      vpc    = "eu-north-1_alpha"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_alpha_tertius"}
    }
    "eu-north-1_alpha_quartus" = {
      cidr   = "11.130.12.0/22"
      vpc    = "eu-north-1_alpha"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_alpha_quartus"}
    }
    "eu-north-1_alpha_quintus" = {
      cidr   = "11.130.16.0/22"
      vpc    = "eu-north-1_alpha"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_alpha_quintus"}
    }
    "eu-north-1_alpha_sextus" = {
      cidr   = "11.130.20.0/22"
      vpc    = "eu-north-1_alpha"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_alpha_sextus"}
    }
    "eu-north-1_alpha_septimus" = {
      cidr   = "11.130.24.0/22"
      vpc    = "eu-north-1_alpha"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_alpha_septimus"}
    }
    "eu-north-1_alpha_octavus" = {
      cidr   = "11.130.28.0/22"
      vpc    = "eu-north-1_alpha"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_alpha_octavus"}
    }
    "eu-north-1_beta_primus" = {
      cidr   = "11.132.0.0/22"
      vpc    = "eu-north-1_beta"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_beta_primus"}
    }
    "eu-north-1_beta_secundus" = {
      cidr   = "11.132.4.0/22"
      vpc    = "eu-north-1_beta"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_beta_secundus"}
    }
    "eu-north-1_beta_tertius" = {
      cidr   = "11.132.8.0/22"
      vpc    = "eu-north-1_beta"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_beta_tertius"}
    }
    "eu-north-1_beta_quartus" = {
      cidr   = "11.132.12.0/22"
      vpc    = "eu-north-1_beta"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_beta_quartus"}
    }
    "eu-north-1_beta_quintus" = {
      cidr   = "11.132.16.0/22"
      vpc    = "eu-north-1_beta"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_beta_quintus"}
    }
    "eu-north-1_beta_sextus" = {
      cidr   = "11.132.20.0/22"
      vpc    = "eu-north-1_beta"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_beta_sextus"}
    }
    "eu-north-1_beta_septimus" = {
      cidr   = "11.132.24.0/22"
      vpc    = "eu-north-1_beta"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_beta_septimus"}
    }
    "eu-north-1_beta_octavus" = {
      cidr   = "11.132.28.0/22"
      vpc    = "eu-north-1_beta"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_beta_octavus"}
    }
    "eu-north-1_gamma_primus" = {
      cidr   = "11.134.0.0/22"
      vpc    = "eu-north-1_gamma"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_gamma_primus"}
    }
    "eu-north-1_gamma_secundus" = {
      cidr   = "11.134.4.0/22"
      vpc    = "eu-north-1_gamma"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_gamma_secundus"}
    }
    "eu-north-1_gamma_tertius" = {
      cidr   = "11.134.8.0/22"
      vpc    = "eu-north-1_gamma"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_gamma_tertius"}
    }
    "eu-north-1_gamma_quartus" = {
      cidr   = "11.134.12.0/22"
      vpc    = "eu-north-1_gamma"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_gamma_quartus"}
    }
    "eu-north-1_gamma_quintus" = {
      cidr   = "11.134.16.0/22"
      vpc    = "eu-north-1_gamma"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_gamma_quintus"}
    }
    "eu-north-1_gamma_sextus" = {
      cidr   = "11.134.20.0/22"
      vpc    = "eu-north-1_gamma"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_gamma_sextus"}
    }
    "eu-north-1_gamma_septimus" = {
      cidr   = "11.134.24.0/22"
      vpc    = "eu-north-1_gamma"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_gamma_septimus"}
    }
    "eu-north-1_gamma_octavus" = {
      cidr   = "11.134.28.0/22"
      vpc    = "eu-north-1_gamma"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_gamma_octavus"}
    }
    "eu-north-1_delta_primus" = {
      cidr   = "11.136.0.0/22"
      vpc    = "eu-north-1_delta"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_delta_primus"}
    }
    "eu-north-1_delta_secundus" = {
      cidr   = "11.136.4.0/22"
      vpc    = "eu-north-1_delta"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_delta_secundus"}
    }
    "eu-north-1_delta_tertius" = {
      cidr   = "11.136.8.0/22"
      vpc    = "eu-north-1_delta"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_delta_tertius"}
    }
    "eu-north-1_delta_quartus" = {
      cidr   = "11.136.12.0/22"
      vpc    = "eu-north-1_delta"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_delta_quartus"}
    }
    "eu-north-1_delta_quintus" = {
      cidr   = "11.136.16.0/22"
      vpc    = "eu-north-1_delta"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_delta_quintus"}
    }
    "eu-north-1_delta_sextus" = {
      cidr   = "11.136.20.0/22"
      vpc    = "eu-north-1_delta"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_delta_sextus"}
    }
    "eu-north-1_delta_septimus" = {
      cidr   = "11.136.24.0/22"
      vpc    = "eu-north-1_delta"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_delta_septimus"}
    }
    "eu-north-1_delta_octavus" = {
      cidr   = "11.136.28.0/22"
      vpc    = "eu-north-1_delta"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_delta_octavus"}
    }
    "eu-north-1_epsilon_primus" = {
      cidr   = "11.138.0.0/22"
      vpc    = "eu-north-1_epsilon"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_epsilon_primus"}
    }
    "eu-north-1_epsilon_secundus" = {
      cidr   = "11.138.4.0/22"
      vpc    = "eu-north-1_epsilon"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_epsilon_secundus"}
    }
    "eu-north-1_epsilon_tertius" = {
      cidr   = "11.138.8.0/22"
      vpc    = "eu-north-1_epsilon"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_epsilon_tertius"}
    }
    "eu-north-1_epsilon_quartus" = {
      cidr   = "11.138.12.0/22"
      vpc    = "eu-north-1_epsilon"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_epsilon_quartus"}
    }
    "eu-north-1_epsilon_quintus" = {
      cidr   = "11.138.16.0/22"
      vpc    = "eu-north-1_epsilon"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_epsilon_quintus"}
    }
    "eu-north-1_epsilon_sextus" = {
      cidr   = "11.138.20.0/22"
      vpc    = "eu-north-1_epsilon"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_epsilon_sextus"}
    }
    "eu-north-1_epsilon_septimus" = {
      cidr   = "11.138.24.0/22"
      vpc    = "eu-north-1_epsilon"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_epsilon_septimus"}
    }
    "eu-north-1_epsilon_octavus" = {
      cidr   = "11.138.28.0/22"
      vpc    = "eu-north-1_epsilon"
      region = "eu-north-1"
      tags   = {"Name": "eu-north-1_epsilon_octavus"}
    }
  }
}