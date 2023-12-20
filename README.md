# terraform--basics

This repository contains all the basics that are needed to kickStart terraform-learning.



### what is terraform ?  Why we need it ? Why companies prefer terraform ? 

```
    Terraform is an open-source infrastructure as code (IaC) tool developed by HashiCorp. It allows users to define and provision infrastructure using a declarative configuration language. With Terraform, you can describe your desired infrastructure in code, and then use Terraform to create, modify, and manage that infrastructure in a consistent and automated way.

   >  Here are some key aspects of Terraform and reasons why companies adopt it:

       *  Infrastructure as Code (IaC): Terraform enables the practice of treating infrastructure as code. Infrastructure configurations are written in a human-readable language, allowing teams to version, share, and manage infrastructure code alongside application code. This brings the benefits of version control, collaboration, and code review to infrastructure management.

      *  Declarative Configuration: Terraform uses a declarative approach, meaning you specify the desired state of your infrastructure, and Terraform takes care of figuring out how to achieve that state. This simplifies the process of provisioning and managing infrastructure, as users don't need to worry about the sequence of operations or low-level details.

      *  Multi-Cloud and Hybrid Cloud Support: Terraform supports a wide range of cloud providers (such as AWS, Azure, Google Cloud Platform, and others), as well as on-premises and hybrid cloud environments. This allows organizations to use a consistent tool and configuration across different cloud providers or their own data centers.

      *  Consistency and Reproducibility: Terraform ensures that the infrastructure deployed in different environments (development, staging, production) remains consistent. This reduces the likelihood of configuration drift and makes it easier to reproduce environments reliably.

      *  Automation and Efficiency: Terraform automates the provisioning and management of infrastructure, reducing the manual effort involved. This leads to increased efficiency, faster deployment cycles, and the ability to scale infrastructure as needed.

      *  Collaboration and Teamwork: Terraform facilitates collaboration among teams by providing a shared language for infrastructure. Teams can work on different parts of the infrastructure code and collaborate through version control systems, making it easier to manage complex infrastructure setups.

      *  Change Management: Terraform tracks changes to infrastructure configurations, making it easy to understand what changes will be applied before actually applying them. This helps in implementing proper change management processes and ensures that infrastructure changes are predictable and safe.

      *  Ecosystem and Modules: Terraform has a rich ecosystem of providers and modules that extend its functionality. Providers allow integration with various infrastructure services, while modules enable the reuse of infrastructure configurations, promoting modularity and code reuse.

      *  Overall, companies adopt Terraform to streamline and automate their infrastructure management processes, improve collaboration among teams, ensure consistency across environments, and take advantage of the benefits of infrastructure as code.

```

### What are the 4 commands or options that you often use while dealing terrform ?

```
    $ terraform init        : Initializes t erraform working directory by downloading the necessary providers and modules specified in the configuration.

    It prepares the directory to be used with Terraform, setting up the backend, plugins, and other necessary components for managing infrastructure as code.

    $ terraform plan        : It previews the changes to infrastructure before applying them, showing the actions Terraform will take to achieve the desired state specified in the configuration.


    $ terraform apply       : It applies the changes defined in the Terraform configuration, creating, updating, or deleting resources to achieve the desired infrastructure state. ( Techincally applies the changes show on the plan )

```

### What are + , -,  -/+ when dealing with terraform plan ?


```
    + (Plus): Indicates a resource that Terraform plans to create as part of the proposed changes. This means a new resource will be added to the infrastructure when you apply the plan.

    - (Minus): Indicates a resource that Terraform plans to destroy. This means that the associated infrastructure resource will be deleted when you apply the plan.

    -/+ (Minus Plus): Indicates a resource that Terraform plans to both destroy and recreate. This typically happens when there are changes to a resource that require recreation rather than an in-place update. The resource will be first destroyed, and then a new one will be created in its place.

```

### When enclose a variable in Quotes and when to use $ notation for a variable ???

> Whenever your variable is enclosed in a set of strings or in between a sentence, then we to enslose them in strings and with bash notation.
> Strings are supposed to be enclosed in double quotes whilst Numbers & Booleans don't need any type of quotes.