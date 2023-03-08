resource "kubernetes_namespace" "minipoc" {
  metadata {
    name = var.namespace
  }
}

resource "kubernetes_deployment" "minipoc" {
  metadata {
    name = var.deployment
    labels = {
      app_name = var.app_name
    }
    namespace = var.namespace
  }

  spec {
    replicas = var.k8s_replicas

    selector {
      match_labels = {
        app_name = var.app_name
      }
    }

    template {
      metadata {
        labels = {
          app_name = var.app_name
        }
      }

      spec {
        container {
          image = var.app_pod_image
          name  = var.app_pod_name

          resources {
            limits = {
              cpu    = var.app_pod_cpu_limits
              memory = var.app_pod_memory_limits
            }
            requests = {
              cpu    = var.app_pod_cpu_requests
              memory = var.app_pod_memory_requests
            }
          }

          port {
                container_port = 8080
          }
        }
      }
    }
  }
}


resource "kubernetes_service" "minipoc" {
  metadata {
    name = var.service_name
  } 
  
  spec {
  
    selector = {
        app = var.app_name
    } 
  
    session_affinity = "ClientIP"

    port {
      port        = 8080 
      target_port = 8080
      node_port   = 30085
    } 
    type = "NodePort"
  } 
} 
