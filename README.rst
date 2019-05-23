To deploy OpenStack with Ceph by  K8S the following URL https://mirantis.jira.com/wiki/spaces/OSCORE/pages/1516503976/Deploy+OpenStack+on+k8s#DeployOpenStackonk8s-AUTOMATICDEPLOYMENT
should be used. And add `kubernetes_compute_count: 3` to context.

default:context:
  kubernetes_compute_count: 3


add rook-master https://charts.rook.io/master
helm search rook-ceph
helm install --namespace rook-ceph-system rook-master/rook-ceph --version 1.0.0
