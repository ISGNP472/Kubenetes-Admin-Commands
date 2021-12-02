Understand the default namespace


kubectl get namespaces

Create the development namespace using kubectl.
    kubectl create -f https://k8s.io/examples/admin/namespace-dev.json

To be sure things are right, let's list all of the namespaces in our cluster.
    kubectl get namespaces --show-labels

## Create Node in each Workspace 
        kubectl config current-context

 -> The next step is to define a context for the kubectl client to work in each namespace.
     The value of "cluster" and "user" fields are copied from the current context.
kubectl config set-context dev --namespace=development \
--cluster=lithe-cocoa-92103_kubernetes \
--user=lithe-cocoa-92103_kubernetes

kubectl config set-context prod --namespace=production \
  --cluster=lithe-cocoa-92103_kubernetes \
  --user=lithe-cocoa-92103_kubernetes