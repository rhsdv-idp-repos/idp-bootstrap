VERSION = 1.0.0

.PHONY: cleanup
cleanup: cleanup_gitops cleanup_namespaces

.PHONY: cleanup_gitops
cleanup_gitops:
	oc delete Application vault -n openshift-gitops
	oc delete AppProject default -n openshift-gitops
	oc delete AppProject janus -n janus-argocd
	oc delete AppProject default -n janus-argocd
	oc delete ArgoCD argocd -n openshift-gitops
	oc delete ArgoCD argocd -n janus-argocd
	oc delete NotificationsConfiguration default-notifications-configuration -n openshift-gitops
	oc delete NotificationsConfiguration default-notifications-configuration -n janus-argocd

.PHONY: cleanup_namespaces
cleanup_namespaces:
	oc delete ns janus-argocd
	oc delete ns openshift-gitops
	oc delete ns vault
	oc delete ns external-secrets
	oc delete ns quay-enterprise
