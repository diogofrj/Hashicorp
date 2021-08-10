resource "kubernetes_deployment" "application" {
  metadata {
    name      = var.name
    namespace = var.namespace

    labels = {
      app = var.name
    }
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = {
        app = var.name
      }
    }

    template {
      metadata {
        labels = {
          app = var.name
        }
      }

      spec {
        security_context {
          run_as_user = var.user_id
        }

        container {
          name  = var.name
          image = var.image

          port {
            container_port = var.port
          }

          security_context {
            allow_privilege_escalation = false
          }
        }
      }
    }
  }
}