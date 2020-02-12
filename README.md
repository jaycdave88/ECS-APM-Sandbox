# ECS-APM-Sandbox

Setup Locally: 
- Run the following to start Jenkins server: 
   1. `docker build .`
   
   2. `docker run -p 8080:8080 -it <container_id>`
   3. Navigate to `localhost:8080`

Setup in AWS ECS: 

   1. Create a Datadog agent daemon service. Instructions can be found here: https://docs.datadoghq.com/integrations/amazon_ecs/?tab=python#web-ui
         1.a. (Note. The `Datadog_agent_daemonService.json` can be used just update the existing API key)
   2. Create/modify Jenkins ECS task definition with `Datadog_ECS_TASKD_FM.json`
   
##### Troubleshooting: 

> If unable to access Jenkins on EC2's public IP
 **Ensure your EC2's security group has access to all traffic.**