
module AWS.Lambda.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.Lambda as Lambda
import AWS.Lambda.Types as LambdaTypes


-- | <p>Identifies a stream as an event source for an AWS Lambda function. It can be either an Amazon Kinesis stream or a Amazon DynamoDB stream. AWS Lambda invokes the specified function when records are posted to the stream.</p> <p>This is the pull model, where AWS Lambda invokes the function. For more information, go to <a href="http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html">AWS Lambda: How it Works</a> in the AWS Lambda Developer Guide.</p> <p>This association between an Amazon Kinesis stream and an AWS Lambda function is called the event source mapping. You provide the configuration information (for example, which stream to read from and which AWS Lambda function to invoke) for the event source mapping in the request body.</p> <p> Each event source, such as a Kinesis stream, can only be associated with one AWS Lambda function. If you call <a>AddEventSource</a> for an event source that is already mapped to another AWS Lambda function, the existing mapping is updated to call the new function instead of the old one. </p> <p>This operation requires permission for the <code>iam:PassRole</code> action for the IAM role. It also requires permission for the <code>lambda:AddEventSource</code> action.</p>
addEventSource :: forall eff. Lambda.Service -> LambdaTypes.AddEventSourceRequest -> Aff (exception :: EXCEPTION | eff) LambdaTypes.EventSourceConfiguration
addEventSource (Lambda.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addEventSource"


-- | <p>Deletes the specified Lambda function code and configuration.</p> <p>This operation requires permission for the <code>lambda:DeleteFunction</code> action.</p>
deleteFunction :: forall eff. Lambda.Service -> LambdaTypes.DeleteFunctionRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteFunction (Lambda.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteFunction"


-- | <p>Returns configuration information for the specified event source mapping (see <a>AddEventSource</a>).</p> <p>This operation requires permission for the <code>lambda:GetEventSource</code> action.</p>
getEventSource :: forall eff. Lambda.Service -> LambdaTypes.GetEventSourceRequest -> Aff (exception :: EXCEPTION | eff) LambdaTypes.EventSourceConfiguration
getEventSource (Lambda.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getEventSource"


-- | <p>Returns the configuration information of the Lambda function and a presigned URL link to the .zip file you uploaded with <a>UploadFunction</a> so you can download the .zip file. Note that the URL is valid for up to 10 minutes. The configuration information is the same information you provided as parameters when uploading the function.</p> <p>This operation requires permission for the <code>lambda:GetFunction</code> action.</p>
getFunction :: forall eff. Lambda.Service -> LambdaTypes.GetFunctionRequest -> Aff (exception :: EXCEPTION | eff) LambdaTypes.GetFunctionResponse
getFunction (Lambda.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getFunction"


-- | <p>Returns the configuration information of the Lambda function. This the same information you provided as parameters when uploading the function by using <a>UploadFunction</a>.</p> <p>This operation requires permission for the <code>lambda:GetFunctionConfiguration</code> operation.</p>
getFunctionConfiguration :: forall eff. Lambda.Service -> LambdaTypes.GetFunctionConfigurationRequest -> Aff (exception :: EXCEPTION | eff) LambdaTypes.FunctionConfiguration
getFunctionConfiguration (Lambda.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getFunctionConfiguration"


-- | <p>Submits an invocation request to AWS Lambda. Upon receiving the request, Lambda executes the specified function asynchronously. To see the logs generated by the Lambda function execution, see the CloudWatch logs console.</p> <p>This operation requires permission for the <code>lambda:InvokeAsync</code> action.</p>
invokeAsync :: forall eff. Lambda.Service -> LambdaTypes.InvokeAsyncRequest -> Aff (exception :: EXCEPTION | eff) LambdaTypes.InvokeAsyncResponse
invokeAsync (Lambda.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "invokeAsync"


-- | <p>Returns a list of event source mappings you created using the <code>AddEventSource</code> (see <a>AddEventSource</a>), where you identify a stream as event source. This list does not include Amazon S3 event sources. </p> <p>For each mapping, the API returns configuration information. You can optionally specify filters to retrieve specific event source mappings.</p> <p>This operation requires permission for the <code>lambda:ListEventSources</code> action.</p>
listEventSources :: forall eff. Lambda.Service -> LambdaTypes.ListEventSourcesRequest -> Aff (exception :: EXCEPTION | eff) LambdaTypes.ListEventSourcesResponse
listEventSources (Lambda.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listEventSources"


-- | <p>Returns a list of your Lambda functions. For each function, the response includes the function configuration information. You must use <a>GetFunction</a> to retrieve the code for your function.</p> <p>This operation requires permission for the <code>lambda:ListFunctions</code> action.</p>
listFunctions :: forall eff. Lambda.Service -> LambdaTypes.ListFunctionsRequest -> Aff (exception :: EXCEPTION | eff) LambdaTypes.ListFunctionsResponse
listFunctions (Lambda.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listFunctions"


-- | <p>Removes an event source mapping. This means AWS Lambda will no longer invoke the function for events in the associated source.</p> <p>This operation requires permission for the <code>lambda:RemoveEventSource</code> action.</p>
removeEventSource :: forall eff. Lambda.Service -> LambdaTypes.RemoveEventSourceRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
removeEventSource (Lambda.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "removeEventSource"


-- | <p>Updates the configuration parameters for the specified Lambda function by using the values provided in the request. You provide only the parameters you want to change. This operation must only be used on an existing Lambda function and cannot be used to update the function's code. </p> <p>This operation requires permission for the <code>lambda:UpdateFunctionConfiguration</code> action.</p>
updateFunctionConfiguration :: forall eff. Lambda.Service -> LambdaTypes.UpdateFunctionConfigurationRequest -> Aff (exception :: EXCEPTION | eff) LambdaTypes.FunctionConfiguration
updateFunctionConfiguration (Lambda.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateFunctionConfiguration"


-- | <p>Creates a new Lambda function or updates an existing function. The function metadata is created from the request parameters, and the code for the function is provided by a .zip file in the request body. If the function name already exists, the existing Lambda function is updated with the new code and metadata. </p> <p>This operation requires permission for the <code>lambda:UploadFunction</code> action.</p>
uploadFunction :: forall eff. Lambda.Service -> LambdaTypes.UploadFunctionRequest -> Aff (exception :: EXCEPTION | eff) LambdaTypes.FunctionConfiguration
uploadFunction (Lambda.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "uploadFunction"