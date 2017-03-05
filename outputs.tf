output "ip" {
    value = "${aws_eip.fastai.public_ip}"
}

output "vpcId" {
    value = "${aws_vpc.default.id}"
}

output "internetGatewayId" {
    value = "${aws_internet_gateway.default.id}"
}
output "subnetId" {
    value = "${aws_subnet.public.id}"
}

output "routeTableId" {
    value = "${aws_route_table.public.id}"
}
output "securityGroupId" {
    value = "${aws_security_group.fastai.id}"
}

output "routeTableAssoc" {
    value = "${aws_route_table_association.public.id}"
}

output "instanceId" {
    value = "${aws_instance.fastai.id}"
}

output "allocAddr" {
    value = "${aws_eip.fastai.id}"
}

output "assocId" {
    value = "${aws_eip_association.fastai.association_id}"
}
