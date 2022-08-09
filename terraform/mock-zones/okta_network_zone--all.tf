resource "okta_network_zone" "pr1239--network-zones" {
    for_each = toset( [
        "zone_1", 
        "zone_2", 
        "zone_3", 
        "zone_4",
        "zone_5",
        "zone_6",
        "zone_7",
        "zone_8",
        "zone_9",
        "zone_90",
        "zone_91",
        "zone_92",
        "zone_93",
        "zone_94",
        "zone_95",
        "zone_96",
        "zone_97",
        "zone_98",
        "zone_99",
        "zone_990",
        ])
    gateways = [ "127.0.0.1" ]
    name = each.key
    type = "IP"
    usage = "POLICY"
}