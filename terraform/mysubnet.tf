resource "google_compute_subnetwork" "management" { ##### NAT & VM #######
  name                     = "management" 
  ip_cidr_range            =  "10.0.2.0/24"                                           ###### or us-central1 "9.0.0.0/24"   #### or 10.0.3.0/24 asia-east1
  region                   = "us-central1"
  network                  = google_compute_network.mynetwork.id
  private_ip_google_access = true
 }
resource "google_compute_subnetwork" "restricted" { ####### GKE   #######
  name                     = "restricted"
  ip_cidr_range            =  "10.0.1.0/24"                                            ########or"us-central1""1.168.0.0/16"######
  region                   = "us-central1"
  network                  = google_compute_network.mynetwork.id
  private_ip_google_access = true

  secondary_ip_range {
    range_name    = "podrange"  #pod
    ip_cidr_range = "10.0.3.0/24"                                                      #######or"1.0.0.0/24"
  }
  secondary_ip_range {
    range_name    = "serrange"  #service
    ip_cidr_range = "10.0.4.0/24"                                                       #####or"30.0.0.0/24"
  }
 }




