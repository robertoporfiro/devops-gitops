Em alto nível, como descrito, é necessária a alteração quando do uso de versões deprecated (v1beta | v1beta1 | v1beta2):

DaemonSet versions extensions/v1beta and apps/v1beta2 are deprecated
use apps/v1, available since Kubernetes 1.9

Deployment versions extensions/v1beta1, apps/v1beta1, and apps/v1beta2 are deprecated
use apps/v1, available since Kubernetes 1.9

ReplicaSet versions extensions/v1beta1, apps/v1beta1, and apps/v1beta2 are deprecated
use apps/v1, available since Kubernetes 1.9

StatefulSet versions apps/v1beta1 and apps/v1beta2 are deprecated
use apps/v1, available since Kubernetes 1.9

NetworkPolicy version extensions/v1beta1 is deprecated
use networking.k8s.io/v1, available since Kubernetes 1.8

PodSecurityPolicy version extensions/v1beta1 is deprecated
use policy/v1beta1, available since Kubernetes 1.10

Ref.: https://kubernetes.io/blog/2019/07/18/api-deprecations-in-1-16/