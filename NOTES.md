



```powershell

cd .\\frontapp

.\\mvnw clean verify

cd ..\\backapp

.\\mvnw clean verify

cd ..


### WITH message
frontapp-1 | 2026-01-04T12:58:58.512Z  INFO ... FrontappController  : Preparing for calling backapp - message was: Hello
frontapp-1 | 2026-01-04T12:58:58.517Z  INFO ... FrontappController  : Calling backapp
backapp-1  | 2026-01-04T12:58:58.770Z  INFO ... BackappController   : Request arrived with message Hello
frontapp-1 | 2026-01-04T12:58:58.921Z  INFO ... FrontappController  : Backapp call was successful

### WITHOUT message
backapp-1   | 2026-01-04T13:05:02.724Z  INFO 1 --- [nio-8081-exec-5] hu.cubix.cloud.api.BackappController     : Returning response: BackappResponse[time=2026-01-04T13:05:02.724788309, message=hardcoded-default-backapp-message, homeworkOwner=Levente Pápes, hostAddress=172.20.0.2, extraImageData=Cubix training]
frontapp-1  | 2026-01-04T13:05:02.727Z  INFO 1 --- [nio-8080-exec-9] h.c.c.api.controller.FrontappController  : Response will be: FrontappResponse[msForReply=2, backappMessage=hardcoded-default-backapp-message, frontappHomeworkOwner=Levente Pápes, frontappHostAddress=172.20.0.3, backappHomeworkOwner=Levente Pápes, backappHostAddress=172.20.0.2, doExtraImageDataMatch=true]