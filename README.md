# tfcloud-aws-eks
tfcloud-aws-eks

# AWS Workshop with teraform, tfcloud via Github codespaces

So I just don't like using a lptop to have anything local.  So I have been focusing on various deployment strategies:

Mostly GithubActions, I just rolled offa Azure project where I used azure web services and the deploy was using github actions so the build/deploy all occured on a push.  The team constantly developed locally using docker desktop, Nx monorepo, and a vast number of projects within a single Nx repo.  GithubActions internal runners handled things beautifully 15k build/deploys and counting.

So to avoid the constand "it works on my machine", I take the approach, no one cares if it works on your machine.  If it doesnt work in the cloud you are deploying then its a false sense of completion.

Hence, I force myself to go automation first using:
Github Actions,
Azure DevOps,
Terraform Cloud
I do use the cloud cli's via web terminal (still no laptop) for lots of admin and other things.

Now I discovered Github codespaces, which brings me back to the days of Eclipes Che and such...ultimately no local nothing.

In learning about EKS I found https://www.eksworkshop.com/docs/introduction/setup/your-account/using-terraform soworking through this, using tfcloud as the deploy of tf code, and using Github codespaces for the repo interaction, so far so good.

Here is how I set it up and will continue:
1. Grab code from official aws-samples repo
    a. I just grabbed the root files
    b. added a region variable
2. Setup id and key in tfcloud
    a. Setup tfcloud user
    b. Confirm email...its a pain
    c. Create an Organization
    d. Connect the repo granting access to Github from tfcloud
    e. Set the env variables in tfcloud.
    f. Push from codespace to main, triggers tfplan, then click apply
    g. When not using the EKS cluster, delete the stack.
3. Go learn via workshop

Hope it helps others learn as well.