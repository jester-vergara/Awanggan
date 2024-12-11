resource "aws_subnet" "private" {
  for_each = { for subnet_key, subnet in var.subnets : subnet_key => subnet if can(regex("APP-PRIVATE|EKS-PRIVATE", subnet.name)) }

  vpc_id                  = var.vpc_id
  cidr_block              = each.value.cidr_block
  availability_zone       = each.value.az
  map_public_ip_on_launch = false

  tags = merge(
    var.tags,
    {
      Name = each.value.name
    }
  )

  depends_on = [aws_vpc.this]
}

resource "aws_subnet" "public" {
  for_each = { for subnet_key, subnet in var.subnets : subnet_key => subnet if can(regex("APP-PUBLIC|EKS-PUBLIC", subnet.name)) }

  vpc_id                  = var.vpc_id
  cidr_block              = each.value.cidr_block
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  tags = merge(
    var.tags,
    {
      Name = each.value.name
    }
  )

  depends_on = [aws_internet_gateway.igw, aws_vpc.this]
}

resource "aws_db_subnet_group" "db" {
  count = var.create_db_subnet_group ? 1 : 0

  name       = "${var.name}-db-subnet-group"
  subnet_ids = [for subnet in aws_subnet.private : subnet.id if can(regex("DB", subnet.name))]

  tags = merge(
    var.tags,
    {
      Name = "${var.name}-db-subnet-group"
    }
  )

  depends_on = [aws_vpc.this]
}
