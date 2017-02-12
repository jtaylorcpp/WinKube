---------WinKube----------

The purpose of this project is to experiment with Kubernetes (k8s) in a way which is accessable without having to turn 
a "traditional" desktop into a development server. The plan is to use the kubectl windows executible along with Vagrant 
and CoreOS as a way to do a virtualized multi-machine deployment.

Software Needed:
    1. Git-Bash     --  The Windows git tool that includes a bash like shell with simple Linux tools such as cURL
    2. VirtualBox   --  Without Hyper-V, this is the easiest and most redily available virtualization software that can
                            be leveraged by Vagrant
    3. Vagrant      --  Ruby based virtualization orchestrator that allows for the templating and orchestrated deployment
                            of various "boxes" which will house the k8s master and slaves
    4. kubectl      --  The k8s control application. This can be downloaded through instructions on kubernetes.io
    
Install Instructions:
    1. For Git-Bash, VirtualBox, and Vagrant; follow directions from the vendor.
    2. For kubectl, open the Git-Bash tool and run:
        curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/windows/amd64/kubectl.exe
        
        NOTE: Once downlaoded, kubectl.exe can be moved to /usr/bin/ to be added in the PATH and called natively
            from the command prompt
    