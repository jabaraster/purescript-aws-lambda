
module AWS.Lambda.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype AddEventSourceRequest = AddEventSourceRequest 
  { "EventSource" :: (String)
  , "FunctionName" :: (FunctionName)
  , "Role" :: (RoleArn)
  , "BatchSize" :: NullOrUndefined (Int)
  , "Parameters" :: NullOrUndefined (Map'')
  }
derive instance newtypeAddEventSourceRequest :: Newtype AddEventSourceRequest _
derive instance repGenericAddEventSourceRequest :: Generic AddEventSourceRequest _
instance showAddEventSourceRequest :: Show AddEventSourceRequest where show = genericShow
instance decodeAddEventSourceRequest :: Decode AddEventSourceRequest where decode = genericDecode options
instance encodeAddEventSourceRequest :: Encode AddEventSourceRequest where encode = genericEncode options

-- | Constructs AddEventSourceRequest from required parameters
newAddEventSourceRequest :: String -> FunctionName -> RoleArn -> AddEventSourceRequest
newAddEventSourceRequest _EventSource _FunctionName _Role = AddEventSourceRequest { "EventSource": _EventSource, "FunctionName": _FunctionName, "Role": _Role, "BatchSize": (NullOrUndefined Nothing), "Parameters": (NullOrUndefined Nothing) }

-- | Constructs AddEventSourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddEventSourceRequest' :: String -> FunctionName -> RoleArn -> ( { "EventSource" :: (String) , "FunctionName" :: (FunctionName) , "Role" :: (RoleArn) , "BatchSize" :: NullOrUndefined (Int) , "Parameters" :: NullOrUndefined (Map'') } -> {"EventSource" :: (String) , "FunctionName" :: (FunctionName) , "Role" :: (RoleArn) , "BatchSize" :: NullOrUndefined (Int) , "Parameters" :: NullOrUndefined (Map'') } ) -> AddEventSourceRequest
newAddEventSourceRequest' _EventSource _FunctionName _Role customize = (AddEventSourceRequest <<< customize) { "EventSource": _EventSource, "FunctionName": _FunctionName, "Role": _Role, "BatchSize": (NullOrUndefined Nothing), "Parameters": (NullOrUndefined Nothing) }



newtype DeleteFunctionRequest = DeleteFunctionRequest 
  { "FunctionName" :: (FunctionName)
  }
derive instance newtypeDeleteFunctionRequest :: Newtype DeleteFunctionRequest _
derive instance repGenericDeleteFunctionRequest :: Generic DeleteFunctionRequest _
instance showDeleteFunctionRequest :: Show DeleteFunctionRequest where show = genericShow
instance decodeDeleteFunctionRequest :: Decode DeleteFunctionRequest where decode = genericDecode options
instance encodeDeleteFunctionRequest :: Encode DeleteFunctionRequest where encode = genericEncode options

-- | Constructs DeleteFunctionRequest from required parameters
newDeleteFunctionRequest :: FunctionName -> DeleteFunctionRequest
newDeleteFunctionRequest _FunctionName = DeleteFunctionRequest { "FunctionName": _FunctionName }

-- | Constructs DeleteFunctionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteFunctionRequest' :: FunctionName -> ( { "FunctionName" :: (FunctionName) } -> {"FunctionName" :: (FunctionName) } ) -> DeleteFunctionRequest
newDeleteFunctionRequest' _FunctionName customize = (DeleteFunctionRequest <<< customize) { "FunctionName": _FunctionName }



newtype Description = Description String
derive instance newtypeDescription :: Newtype Description _
derive instance repGenericDescription :: Generic Description _
instance showDescription :: Show Description where show = genericShow
instance decodeDescription :: Decode Description where decode = genericDecode options
instance encodeDescription :: Encode Description where encode = genericEncode options



-- | <p>Describes mapping between an Amazon Kinesis stream and a Lambda function.</p>
newtype EventSourceConfiguration = EventSourceConfiguration 
  { "UUID" :: NullOrUndefined (String)
  , "BatchSize" :: NullOrUndefined (Int)
  , "EventSource" :: NullOrUndefined (String)
  , "FunctionName" :: NullOrUndefined (FunctionName)
  , "Parameters" :: NullOrUndefined (Map'')
  , "Role" :: NullOrUndefined (RoleArn)
  , "LastModified" :: NullOrUndefined (Types.Timestamp)
  , "IsActive" :: NullOrUndefined (Boolean)
  , "Status" :: NullOrUndefined (String)
  }
derive instance newtypeEventSourceConfiguration :: Newtype EventSourceConfiguration _
derive instance repGenericEventSourceConfiguration :: Generic EventSourceConfiguration _
instance showEventSourceConfiguration :: Show EventSourceConfiguration where show = genericShow
instance decodeEventSourceConfiguration :: Decode EventSourceConfiguration where decode = genericDecode options
instance encodeEventSourceConfiguration :: Encode EventSourceConfiguration where encode = genericEncode options

-- | Constructs EventSourceConfiguration from required parameters
newEventSourceConfiguration :: EventSourceConfiguration
newEventSourceConfiguration  = EventSourceConfiguration { "BatchSize": (NullOrUndefined Nothing), "EventSource": (NullOrUndefined Nothing), "FunctionName": (NullOrUndefined Nothing), "IsActive": (NullOrUndefined Nothing), "LastModified": (NullOrUndefined Nothing), "Parameters": (NullOrUndefined Nothing), "Role": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "UUID": (NullOrUndefined Nothing) }

-- | Constructs EventSourceConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEventSourceConfiguration' :: ( { "UUID" :: NullOrUndefined (String) , "BatchSize" :: NullOrUndefined (Int) , "EventSource" :: NullOrUndefined (String) , "FunctionName" :: NullOrUndefined (FunctionName) , "Parameters" :: NullOrUndefined (Map'') , "Role" :: NullOrUndefined (RoleArn) , "LastModified" :: NullOrUndefined (Types.Timestamp) , "IsActive" :: NullOrUndefined (Boolean) , "Status" :: NullOrUndefined (String) } -> {"UUID" :: NullOrUndefined (String) , "BatchSize" :: NullOrUndefined (Int) , "EventSource" :: NullOrUndefined (String) , "FunctionName" :: NullOrUndefined (FunctionName) , "Parameters" :: NullOrUndefined (Map'') , "Role" :: NullOrUndefined (RoleArn) , "LastModified" :: NullOrUndefined (Types.Timestamp) , "IsActive" :: NullOrUndefined (Boolean) , "Status" :: NullOrUndefined (String) } ) -> EventSourceConfiguration
newEventSourceConfiguration'  customize = (EventSourceConfiguration <<< customize) { "BatchSize": (NullOrUndefined Nothing), "EventSource": (NullOrUndefined Nothing), "FunctionName": (NullOrUndefined Nothing), "IsActive": (NullOrUndefined Nothing), "LastModified": (NullOrUndefined Nothing), "Parameters": (NullOrUndefined Nothing), "Role": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "UUID": (NullOrUndefined Nothing) }



newtype EventSourceList = EventSourceList (Array EventSourceConfiguration)
derive instance newtypeEventSourceList :: Newtype EventSourceList _
derive instance repGenericEventSourceList :: Generic EventSourceList _
instance showEventSourceList :: Show EventSourceList where show = genericShow
instance decodeEventSourceList :: Decode EventSourceList where decode = genericDecode options
instance encodeEventSourceList :: Encode EventSourceList where encode = genericEncode options



newtype FunctionArn = FunctionArn String
derive instance newtypeFunctionArn :: Newtype FunctionArn _
derive instance repGenericFunctionArn :: Generic FunctionArn _
instance showFunctionArn :: Show FunctionArn where show = genericShow
instance decodeFunctionArn :: Decode FunctionArn where decode = genericDecode options
instance encodeFunctionArn :: Encode FunctionArn where encode = genericEncode options



-- | <p>The object for the Lambda function location.</p>
newtype FunctionCodeLocation = FunctionCodeLocation 
  { "RepositoryType" :: NullOrUndefined (String)
  , "Location" :: NullOrUndefined (String)
  }
derive instance newtypeFunctionCodeLocation :: Newtype FunctionCodeLocation _
derive instance repGenericFunctionCodeLocation :: Generic FunctionCodeLocation _
instance showFunctionCodeLocation :: Show FunctionCodeLocation where show = genericShow
instance decodeFunctionCodeLocation :: Decode FunctionCodeLocation where decode = genericDecode options
instance encodeFunctionCodeLocation :: Encode FunctionCodeLocation where encode = genericEncode options

-- | Constructs FunctionCodeLocation from required parameters
newFunctionCodeLocation :: FunctionCodeLocation
newFunctionCodeLocation  = FunctionCodeLocation { "Location": (NullOrUndefined Nothing), "RepositoryType": (NullOrUndefined Nothing) }

-- | Constructs FunctionCodeLocation's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFunctionCodeLocation' :: ( { "RepositoryType" :: NullOrUndefined (String) , "Location" :: NullOrUndefined (String) } -> {"RepositoryType" :: NullOrUndefined (String) , "Location" :: NullOrUndefined (String) } ) -> FunctionCodeLocation
newFunctionCodeLocation'  customize = (FunctionCodeLocation <<< customize) { "Location": (NullOrUndefined Nothing), "RepositoryType": (NullOrUndefined Nothing) }



-- | <p>A complex type that describes function metadata.</p>
newtype FunctionConfiguration = FunctionConfiguration 
  { "FunctionName" :: NullOrUndefined (FunctionName)
  , "FunctionARN" :: NullOrUndefined (FunctionArn)
  , "ConfigurationId" :: NullOrUndefined (String)
  , "Runtime" :: NullOrUndefined (Runtime)
  , "Role" :: NullOrUndefined (RoleArn)
  , "Handler" :: NullOrUndefined (Handler)
  , "Mode" :: NullOrUndefined (Mode)
  , "CodeSize" :: NullOrUndefined (Number)
  , "Description" :: NullOrUndefined (Description)
  , "Timeout" :: NullOrUndefined (Timeout)
  , "MemorySize" :: NullOrUndefined (MemorySize)
  , "LastModified" :: NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeFunctionConfiguration :: Newtype FunctionConfiguration _
derive instance repGenericFunctionConfiguration :: Generic FunctionConfiguration _
instance showFunctionConfiguration :: Show FunctionConfiguration where show = genericShow
instance decodeFunctionConfiguration :: Decode FunctionConfiguration where decode = genericDecode options
instance encodeFunctionConfiguration :: Encode FunctionConfiguration where encode = genericEncode options

-- | Constructs FunctionConfiguration from required parameters
newFunctionConfiguration :: FunctionConfiguration
newFunctionConfiguration  = FunctionConfiguration { "CodeSize": (NullOrUndefined Nothing), "ConfigurationId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "FunctionARN": (NullOrUndefined Nothing), "FunctionName": (NullOrUndefined Nothing), "Handler": (NullOrUndefined Nothing), "LastModified": (NullOrUndefined Nothing), "MemorySize": (NullOrUndefined Nothing), "Mode": (NullOrUndefined Nothing), "Role": (NullOrUndefined Nothing), "Runtime": (NullOrUndefined Nothing), "Timeout": (NullOrUndefined Nothing) }

-- | Constructs FunctionConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFunctionConfiguration' :: ( { "FunctionName" :: NullOrUndefined (FunctionName) , "FunctionARN" :: NullOrUndefined (FunctionArn) , "ConfigurationId" :: NullOrUndefined (String) , "Runtime" :: NullOrUndefined (Runtime) , "Role" :: NullOrUndefined (RoleArn) , "Handler" :: NullOrUndefined (Handler) , "Mode" :: NullOrUndefined (Mode) , "CodeSize" :: NullOrUndefined (Number) , "Description" :: NullOrUndefined (Description) , "Timeout" :: NullOrUndefined (Timeout) , "MemorySize" :: NullOrUndefined (MemorySize) , "LastModified" :: NullOrUndefined (Types.Timestamp) } -> {"FunctionName" :: NullOrUndefined (FunctionName) , "FunctionARN" :: NullOrUndefined (FunctionArn) , "ConfigurationId" :: NullOrUndefined (String) , "Runtime" :: NullOrUndefined (Runtime) , "Role" :: NullOrUndefined (RoleArn) , "Handler" :: NullOrUndefined (Handler) , "Mode" :: NullOrUndefined (Mode) , "CodeSize" :: NullOrUndefined (Number) , "Description" :: NullOrUndefined (Description) , "Timeout" :: NullOrUndefined (Timeout) , "MemorySize" :: NullOrUndefined (MemorySize) , "LastModified" :: NullOrUndefined (Types.Timestamp) } ) -> FunctionConfiguration
newFunctionConfiguration'  customize = (FunctionConfiguration <<< customize) { "CodeSize": (NullOrUndefined Nothing), "ConfigurationId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "FunctionARN": (NullOrUndefined Nothing), "FunctionName": (NullOrUndefined Nothing), "Handler": (NullOrUndefined Nothing), "LastModified": (NullOrUndefined Nothing), "MemorySize": (NullOrUndefined Nothing), "Mode": (NullOrUndefined Nothing), "Role": (NullOrUndefined Nothing), "Runtime": (NullOrUndefined Nothing), "Timeout": (NullOrUndefined Nothing) }



newtype FunctionList = FunctionList (Array FunctionConfiguration)
derive instance newtypeFunctionList :: Newtype FunctionList _
derive instance repGenericFunctionList :: Generic FunctionList _
instance showFunctionList :: Show FunctionList where show = genericShow
instance decodeFunctionList :: Decode FunctionList where decode = genericDecode options
instance encodeFunctionList :: Encode FunctionList where encode = genericEncode options



newtype FunctionName = FunctionName String
derive instance newtypeFunctionName :: Newtype FunctionName _
derive instance repGenericFunctionName :: Generic FunctionName _
instance showFunctionName :: Show FunctionName where show = genericShow
instance decodeFunctionName :: Decode FunctionName where decode = genericDecode options
instance encodeFunctionName :: Encode FunctionName where encode = genericEncode options



newtype GetEventSourceRequest = GetEventSourceRequest 
  { "UUID" :: (String)
  }
derive instance newtypeGetEventSourceRequest :: Newtype GetEventSourceRequest _
derive instance repGenericGetEventSourceRequest :: Generic GetEventSourceRequest _
instance showGetEventSourceRequest :: Show GetEventSourceRequest where show = genericShow
instance decodeGetEventSourceRequest :: Decode GetEventSourceRequest where decode = genericDecode options
instance encodeGetEventSourceRequest :: Encode GetEventSourceRequest where encode = genericEncode options

-- | Constructs GetEventSourceRequest from required parameters
newGetEventSourceRequest :: String -> GetEventSourceRequest
newGetEventSourceRequest _UUID = GetEventSourceRequest { "UUID": _UUID }

-- | Constructs GetEventSourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetEventSourceRequest' :: String -> ( { "UUID" :: (String) } -> {"UUID" :: (String) } ) -> GetEventSourceRequest
newGetEventSourceRequest' _UUID customize = (GetEventSourceRequest <<< customize) { "UUID": _UUID }



newtype GetFunctionConfigurationRequest = GetFunctionConfigurationRequest 
  { "FunctionName" :: (FunctionName)
  }
derive instance newtypeGetFunctionConfigurationRequest :: Newtype GetFunctionConfigurationRequest _
derive instance repGenericGetFunctionConfigurationRequest :: Generic GetFunctionConfigurationRequest _
instance showGetFunctionConfigurationRequest :: Show GetFunctionConfigurationRequest where show = genericShow
instance decodeGetFunctionConfigurationRequest :: Decode GetFunctionConfigurationRequest where decode = genericDecode options
instance encodeGetFunctionConfigurationRequest :: Encode GetFunctionConfigurationRequest where encode = genericEncode options

-- | Constructs GetFunctionConfigurationRequest from required parameters
newGetFunctionConfigurationRequest :: FunctionName -> GetFunctionConfigurationRequest
newGetFunctionConfigurationRequest _FunctionName = GetFunctionConfigurationRequest { "FunctionName": _FunctionName }

-- | Constructs GetFunctionConfigurationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetFunctionConfigurationRequest' :: FunctionName -> ( { "FunctionName" :: (FunctionName) } -> {"FunctionName" :: (FunctionName) } ) -> GetFunctionConfigurationRequest
newGetFunctionConfigurationRequest' _FunctionName customize = (GetFunctionConfigurationRequest <<< customize) { "FunctionName": _FunctionName }



newtype GetFunctionRequest = GetFunctionRequest 
  { "FunctionName" :: (FunctionName)
  }
derive instance newtypeGetFunctionRequest :: Newtype GetFunctionRequest _
derive instance repGenericGetFunctionRequest :: Generic GetFunctionRequest _
instance showGetFunctionRequest :: Show GetFunctionRequest where show = genericShow
instance decodeGetFunctionRequest :: Decode GetFunctionRequest where decode = genericDecode options
instance encodeGetFunctionRequest :: Encode GetFunctionRequest where encode = genericEncode options

-- | Constructs GetFunctionRequest from required parameters
newGetFunctionRequest :: FunctionName -> GetFunctionRequest
newGetFunctionRequest _FunctionName = GetFunctionRequest { "FunctionName": _FunctionName }

-- | Constructs GetFunctionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetFunctionRequest' :: FunctionName -> ( { "FunctionName" :: (FunctionName) } -> {"FunctionName" :: (FunctionName) } ) -> GetFunctionRequest
newGetFunctionRequest' _FunctionName customize = (GetFunctionRequest <<< customize) { "FunctionName": _FunctionName }



-- | <p>This response contains the object for AWS Lambda function location (see <a>API_FunctionCodeLocation</a></p>
newtype GetFunctionResponse = GetFunctionResponse 
  { "Configuration" :: NullOrUndefined (FunctionConfiguration)
  , "Code" :: NullOrUndefined (FunctionCodeLocation)
  }
derive instance newtypeGetFunctionResponse :: Newtype GetFunctionResponse _
derive instance repGenericGetFunctionResponse :: Generic GetFunctionResponse _
instance showGetFunctionResponse :: Show GetFunctionResponse where show = genericShow
instance decodeGetFunctionResponse :: Decode GetFunctionResponse where decode = genericDecode options
instance encodeGetFunctionResponse :: Encode GetFunctionResponse where encode = genericEncode options

-- | Constructs GetFunctionResponse from required parameters
newGetFunctionResponse :: GetFunctionResponse
newGetFunctionResponse  = GetFunctionResponse { "Code": (NullOrUndefined Nothing), "Configuration": (NullOrUndefined Nothing) }

-- | Constructs GetFunctionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetFunctionResponse' :: ( { "Configuration" :: NullOrUndefined (FunctionConfiguration) , "Code" :: NullOrUndefined (FunctionCodeLocation) } -> {"Configuration" :: NullOrUndefined (FunctionConfiguration) , "Code" :: NullOrUndefined (FunctionCodeLocation) } ) -> GetFunctionResponse
newGetFunctionResponse'  customize = (GetFunctionResponse <<< customize) { "Code": (NullOrUndefined Nothing), "Configuration": (NullOrUndefined Nothing) }



newtype Handler = Handler String
derive instance newtypeHandler :: Newtype Handler _
derive instance repGenericHandler :: Generic Handler _
instance showHandler :: Show Handler where show = genericShow
instance decodeHandler :: Decode Handler where decode = genericDecode options
instance encodeHandler :: Encode Handler where encode = genericEncode options



newtype HttpStatus = HttpStatus Int
derive instance newtypeHttpStatus :: Newtype HttpStatus _
derive instance repGenericHttpStatus :: Generic HttpStatus _
instance showHttpStatus :: Show HttpStatus where show = genericShow
instance decodeHttpStatus :: Decode HttpStatus where decode = genericDecode options
instance encodeHttpStatus :: Encode HttpStatus where encode = genericEncode options



-- | <p>One of the parameters in the request is invalid. For example, if you provided an IAM role for AWS Lambda to assume in the <code>UploadFunction</code> or the <code>UpdateFunctionConfiguration</code> API, that AWS Lambda is unable to assume you will get this exception. </p>
newtype InvalidParameterValueException = InvalidParameterValueException 
  { "Type" :: NullOrUndefined (String)
  , "message" :: NullOrUndefined (String)
  }
derive instance newtypeInvalidParameterValueException :: Newtype InvalidParameterValueException _
derive instance repGenericInvalidParameterValueException :: Generic InvalidParameterValueException _
instance showInvalidParameterValueException :: Show InvalidParameterValueException where show = genericShow
instance decodeInvalidParameterValueException :: Decode InvalidParameterValueException where decode = genericDecode options
instance encodeInvalidParameterValueException :: Encode InvalidParameterValueException where encode = genericEncode options

-- | Constructs InvalidParameterValueException from required parameters
newInvalidParameterValueException :: InvalidParameterValueException
newInvalidParameterValueException  = InvalidParameterValueException { "Type": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidParameterValueException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidParameterValueException' :: ( { "Type" :: NullOrUndefined (String) , "message" :: NullOrUndefined (String) } -> {"Type" :: NullOrUndefined (String) , "message" :: NullOrUndefined (String) } ) -> InvalidParameterValueException
newInvalidParameterValueException'  customize = (InvalidParameterValueException <<< customize) { "Type": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing) }



-- | <p>The request body could not be parsed as JSON.</p>
newtype InvalidRequestContentException = InvalidRequestContentException 
  { "Type" :: NullOrUndefined (String)
  , "message" :: NullOrUndefined (String)
  }
derive instance newtypeInvalidRequestContentException :: Newtype InvalidRequestContentException _
derive instance repGenericInvalidRequestContentException :: Generic InvalidRequestContentException _
instance showInvalidRequestContentException :: Show InvalidRequestContentException where show = genericShow
instance decodeInvalidRequestContentException :: Decode InvalidRequestContentException where decode = genericDecode options
instance encodeInvalidRequestContentException :: Encode InvalidRequestContentException where encode = genericEncode options

-- | Constructs InvalidRequestContentException from required parameters
newInvalidRequestContentException :: InvalidRequestContentException
newInvalidRequestContentException  = InvalidRequestContentException { "Type": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidRequestContentException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidRequestContentException' :: ( { "Type" :: NullOrUndefined (String) , "message" :: NullOrUndefined (String) } -> {"Type" :: NullOrUndefined (String) , "message" :: NullOrUndefined (String) } ) -> InvalidRequestContentException
newInvalidRequestContentException'  customize = (InvalidRequestContentException <<< customize) { "Type": (NullOrUndefined Nothing), "message": (NullOrUndefined Nothing) }



newtype InvokeAsyncRequest = InvokeAsyncRequest 
  { "FunctionName" :: (FunctionName)
  , "InvokeArgs" :: (String)
  }
derive instance newtypeInvokeAsyncRequest :: Newtype InvokeAsyncRequest _
derive instance repGenericInvokeAsyncRequest :: Generic InvokeAsyncRequest _
instance showInvokeAsyncRequest :: Show InvokeAsyncRequest where show = genericShow
instance decodeInvokeAsyncRequest :: Decode InvokeAsyncRequest where decode = genericDecode options
instance encodeInvokeAsyncRequest :: Encode InvokeAsyncRequest where encode = genericEncode options

-- | Constructs InvokeAsyncRequest from required parameters
newInvokeAsyncRequest :: FunctionName -> String -> InvokeAsyncRequest
newInvokeAsyncRequest _FunctionName _InvokeArgs = InvokeAsyncRequest { "FunctionName": _FunctionName, "InvokeArgs": _InvokeArgs }

-- | Constructs InvokeAsyncRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvokeAsyncRequest' :: FunctionName -> String -> ( { "FunctionName" :: (FunctionName) , "InvokeArgs" :: (String) } -> {"FunctionName" :: (FunctionName) , "InvokeArgs" :: (String) } ) -> InvokeAsyncRequest
newInvokeAsyncRequest' _FunctionName _InvokeArgs customize = (InvokeAsyncRequest <<< customize) { "FunctionName": _FunctionName, "InvokeArgs": _InvokeArgs }



-- | <p>Upon success, it returns empty response. Otherwise, throws an exception.</p>
newtype InvokeAsyncResponse = InvokeAsyncResponse 
  { "Status" :: NullOrUndefined (HttpStatus)
  }
derive instance newtypeInvokeAsyncResponse :: Newtype InvokeAsyncResponse _
derive instance repGenericInvokeAsyncResponse :: Generic InvokeAsyncResponse _
instance showInvokeAsyncResponse :: Show InvokeAsyncResponse where show = genericShow
instance decodeInvokeAsyncResponse :: Decode InvokeAsyncResponse where decode = genericDecode options
instance encodeInvokeAsyncResponse :: Encode InvokeAsyncResponse where encode = genericEncode options

-- | Constructs InvokeAsyncResponse from required parameters
newInvokeAsyncResponse :: InvokeAsyncResponse
newInvokeAsyncResponse  = InvokeAsyncResponse { "Status": (NullOrUndefined Nothing) }

-- | Constructs InvokeAsyncResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvokeAsyncResponse' :: ( { "Status" :: NullOrUndefined (HttpStatus) } -> {"Status" :: NullOrUndefined (HttpStatus) } ) -> InvokeAsyncResponse
newInvokeAsyncResponse'  customize = (InvokeAsyncResponse <<< customize) { "Status": (NullOrUndefined Nothing) }



newtype ListEventSourcesRequest = ListEventSourcesRequest 
  { "EventSourceArn" :: NullOrUndefined (String)
  , "FunctionName" :: NullOrUndefined (FunctionName)
  , "Marker" :: NullOrUndefined (String)
  , "MaxItems" :: NullOrUndefined (MaxListItems)
  }
derive instance newtypeListEventSourcesRequest :: Newtype ListEventSourcesRequest _
derive instance repGenericListEventSourcesRequest :: Generic ListEventSourcesRequest _
instance showListEventSourcesRequest :: Show ListEventSourcesRequest where show = genericShow
instance decodeListEventSourcesRequest :: Decode ListEventSourcesRequest where decode = genericDecode options
instance encodeListEventSourcesRequest :: Encode ListEventSourcesRequest where encode = genericEncode options

-- | Constructs ListEventSourcesRequest from required parameters
newListEventSourcesRequest :: ListEventSourcesRequest
newListEventSourcesRequest  = ListEventSourcesRequest { "EventSourceArn": (NullOrUndefined Nothing), "FunctionName": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }

-- | Constructs ListEventSourcesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListEventSourcesRequest' :: ( { "EventSourceArn" :: NullOrUndefined (String) , "FunctionName" :: NullOrUndefined (FunctionName) , "Marker" :: NullOrUndefined (String) , "MaxItems" :: NullOrUndefined (MaxListItems) } -> {"EventSourceArn" :: NullOrUndefined (String) , "FunctionName" :: NullOrUndefined (FunctionName) , "Marker" :: NullOrUndefined (String) , "MaxItems" :: NullOrUndefined (MaxListItems) } ) -> ListEventSourcesRequest
newListEventSourcesRequest'  customize = (ListEventSourcesRequest <<< customize) { "EventSourceArn": (NullOrUndefined Nothing), "FunctionName": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }



-- | <p>Contains a list of event sources (see <a>API_EventSourceConfiguration</a>)</p>
newtype ListEventSourcesResponse = ListEventSourcesResponse 
  { "NextMarker" :: NullOrUndefined (String)
  , "EventSources" :: NullOrUndefined (EventSourceList)
  }
derive instance newtypeListEventSourcesResponse :: Newtype ListEventSourcesResponse _
derive instance repGenericListEventSourcesResponse :: Generic ListEventSourcesResponse _
instance showListEventSourcesResponse :: Show ListEventSourcesResponse where show = genericShow
instance decodeListEventSourcesResponse :: Decode ListEventSourcesResponse where decode = genericDecode options
instance encodeListEventSourcesResponse :: Encode ListEventSourcesResponse where encode = genericEncode options

-- | Constructs ListEventSourcesResponse from required parameters
newListEventSourcesResponse :: ListEventSourcesResponse
newListEventSourcesResponse  = ListEventSourcesResponse { "EventSources": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing) }

-- | Constructs ListEventSourcesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListEventSourcesResponse' :: ( { "NextMarker" :: NullOrUndefined (String) , "EventSources" :: NullOrUndefined (EventSourceList) } -> {"NextMarker" :: NullOrUndefined (String) , "EventSources" :: NullOrUndefined (EventSourceList) } ) -> ListEventSourcesResponse
newListEventSourcesResponse'  customize = (ListEventSourcesResponse <<< customize) { "EventSources": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing) }



newtype ListFunctionsRequest = ListFunctionsRequest 
  { "Marker" :: NullOrUndefined (String)
  , "MaxItems" :: NullOrUndefined (MaxListItems)
  }
derive instance newtypeListFunctionsRequest :: Newtype ListFunctionsRequest _
derive instance repGenericListFunctionsRequest :: Generic ListFunctionsRequest _
instance showListFunctionsRequest :: Show ListFunctionsRequest where show = genericShow
instance decodeListFunctionsRequest :: Decode ListFunctionsRequest where decode = genericDecode options
instance encodeListFunctionsRequest :: Encode ListFunctionsRequest where encode = genericEncode options

-- | Constructs ListFunctionsRequest from required parameters
newListFunctionsRequest :: ListFunctionsRequest
newListFunctionsRequest  = ListFunctionsRequest { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }

-- | Constructs ListFunctionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListFunctionsRequest' :: ( { "Marker" :: NullOrUndefined (String) , "MaxItems" :: NullOrUndefined (MaxListItems) } -> {"Marker" :: NullOrUndefined (String) , "MaxItems" :: NullOrUndefined (MaxListItems) } ) -> ListFunctionsRequest
newListFunctionsRequest'  customize = (ListFunctionsRequest <<< customize) { "Marker": (NullOrUndefined Nothing), "MaxItems": (NullOrUndefined Nothing) }



-- | <p>Contains a list of AWS Lambda function configurations (see <a>API_FunctionConfiguration</a>.</p>
newtype ListFunctionsResponse = ListFunctionsResponse 
  { "NextMarker" :: NullOrUndefined (String)
  , "Functions" :: NullOrUndefined (FunctionList)
  }
derive instance newtypeListFunctionsResponse :: Newtype ListFunctionsResponse _
derive instance repGenericListFunctionsResponse :: Generic ListFunctionsResponse _
instance showListFunctionsResponse :: Show ListFunctionsResponse where show = genericShow
instance decodeListFunctionsResponse :: Decode ListFunctionsResponse where decode = genericDecode options
instance encodeListFunctionsResponse :: Encode ListFunctionsResponse where encode = genericEncode options

-- | Constructs ListFunctionsResponse from required parameters
newListFunctionsResponse :: ListFunctionsResponse
newListFunctionsResponse  = ListFunctionsResponse { "Functions": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing) }

-- | Constructs ListFunctionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListFunctionsResponse' :: ( { "NextMarker" :: NullOrUndefined (String) , "Functions" :: NullOrUndefined (FunctionList) } -> {"NextMarker" :: NullOrUndefined (String) , "Functions" :: NullOrUndefined (FunctionList) } ) -> ListFunctionsResponse
newListFunctionsResponse'  customize = (ListFunctionsResponse <<< customize) { "Functions": (NullOrUndefined Nothing), "NextMarker": (NullOrUndefined Nothing) }



newtype Map'' = Map'' (StrMap.StrMap String)
derive instance newtypeMap'' :: Newtype Map'' _
derive instance repGenericMap'' :: Generic Map'' _
instance showMap'' :: Show Map'' where show = genericShow
instance decodeMap'' :: Decode Map'' where decode = genericDecode options
instance encodeMap'' :: Encode Map'' where encode = genericEncode options



newtype MaxListItems = MaxListItems Int
derive instance newtypeMaxListItems :: Newtype MaxListItems _
derive instance repGenericMaxListItems :: Generic MaxListItems _
instance showMaxListItems :: Show MaxListItems where show = genericShow
instance decodeMaxListItems :: Decode MaxListItems where decode = genericDecode options
instance encodeMaxListItems :: Encode MaxListItems where encode = genericEncode options



newtype MemorySize = MemorySize Int
derive instance newtypeMemorySize :: Newtype MemorySize _
derive instance repGenericMemorySize :: Generic MemorySize _
instance showMemorySize :: Show MemorySize where show = genericShow
instance decodeMemorySize :: Decode MemorySize where decode = genericDecode options
instance encodeMemorySize :: Encode MemorySize where encode = genericEncode options



newtype Mode = Mode String
derive instance newtypeMode :: Newtype Mode _
derive instance repGenericMode :: Generic Mode _
instance showMode :: Show Mode where show = genericShow
instance decodeMode :: Decode Mode where decode = genericDecode options
instance encodeMode :: Encode Mode where encode = genericEncode options



newtype RemoveEventSourceRequest = RemoveEventSourceRequest 
  { "UUID" :: (String)
  }
derive instance newtypeRemoveEventSourceRequest :: Newtype RemoveEventSourceRequest _
derive instance repGenericRemoveEventSourceRequest :: Generic RemoveEventSourceRequest _
instance showRemoveEventSourceRequest :: Show RemoveEventSourceRequest where show = genericShow
instance decodeRemoveEventSourceRequest :: Decode RemoveEventSourceRequest where decode = genericDecode options
instance encodeRemoveEventSourceRequest :: Encode RemoveEventSourceRequest where encode = genericEncode options

-- | Constructs RemoveEventSourceRequest from required parameters
newRemoveEventSourceRequest :: String -> RemoveEventSourceRequest
newRemoveEventSourceRequest _UUID = RemoveEventSourceRequest { "UUID": _UUID }

-- | Constructs RemoveEventSourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemoveEventSourceRequest' :: String -> ( { "UUID" :: (String) } -> {"UUID" :: (String) } ) -> RemoveEventSourceRequest
newRemoveEventSourceRequest' _UUID customize = (RemoveEventSourceRequest <<< customize) { "UUID": _UUID }



-- | <p>The function or the event source specified in the request does not exist.</p>
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "Type" :: NullOrUndefined (String)
  , "Message" :: NullOrUndefined (String)
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where decode = genericDecode options
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where encode = genericEncode options

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ResourceNotFoundException
newResourceNotFoundException  = ResourceNotFoundException { "Message": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ( { "Type" :: NullOrUndefined (String) , "Message" :: NullOrUndefined (String) } -> {"Type" :: NullOrUndefined (String) , "Message" :: NullOrUndefined (String) } ) -> ResourceNotFoundException
newResourceNotFoundException'  customize = (ResourceNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype RoleArn = RoleArn String
derive instance newtypeRoleArn :: Newtype RoleArn _
derive instance repGenericRoleArn :: Generic RoleArn _
instance showRoleArn :: Show RoleArn where show = genericShow
instance decodeRoleArn :: Decode RoleArn where decode = genericDecode options
instance encodeRoleArn :: Encode RoleArn where encode = genericEncode options



newtype Runtime = Runtime String
derive instance newtypeRuntime :: Newtype Runtime _
derive instance repGenericRuntime :: Generic Runtime _
instance showRuntime :: Show Runtime where show = genericShow
instance decodeRuntime :: Decode Runtime where decode = genericDecode options
instance encodeRuntime :: Encode Runtime where encode = genericEncode options



-- | <p>The AWS Lambda service encountered an internal error.</p>
newtype ServiceException = ServiceException 
  { "Type" :: NullOrUndefined (String)
  , "Message" :: NullOrUndefined (String)
  }
derive instance newtypeServiceException :: Newtype ServiceException _
derive instance repGenericServiceException :: Generic ServiceException _
instance showServiceException :: Show ServiceException where show = genericShow
instance decodeServiceException :: Decode ServiceException where decode = genericDecode options
instance encodeServiceException :: Encode ServiceException where encode = genericEncode options

-- | Constructs ServiceException from required parameters
newServiceException :: ServiceException
newServiceException  = ServiceException { "Message": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs ServiceException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceException' :: ( { "Type" :: NullOrUndefined (String) , "Message" :: NullOrUndefined (String) } -> {"Type" :: NullOrUndefined (String) , "Message" :: NullOrUndefined (String) } ) -> ServiceException
newServiceException'  customize = (ServiceException <<< customize) { "Message": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype Timeout = Timeout Int
derive instance newtypeTimeout :: Newtype Timeout _
derive instance repGenericTimeout :: Generic Timeout _
instance showTimeout :: Show Timeout where show = genericShow
instance decodeTimeout :: Decode Timeout where decode = genericDecode options
instance encodeTimeout :: Encode Timeout where encode = genericEncode options



newtype UpdateFunctionConfigurationRequest = UpdateFunctionConfigurationRequest 
  { "FunctionName" :: (FunctionName)
  , "Role" :: NullOrUndefined (RoleArn)
  , "Handler" :: NullOrUndefined (Handler)
  , "Description" :: NullOrUndefined (Description)
  , "Timeout" :: NullOrUndefined (Timeout)
  , "MemorySize" :: NullOrUndefined (MemorySize)
  }
derive instance newtypeUpdateFunctionConfigurationRequest :: Newtype UpdateFunctionConfigurationRequest _
derive instance repGenericUpdateFunctionConfigurationRequest :: Generic UpdateFunctionConfigurationRequest _
instance showUpdateFunctionConfigurationRequest :: Show UpdateFunctionConfigurationRequest where show = genericShow
instance decodeUpdateFunctionConfigurationRequest :: Decode UpdateFunctionConfigurationRequest where decode = genericDecode options
instance encodeUpdateFunctionConfigurationRequest :: Encode UpdateFunctionConfigurationRequest where encode = genericEncode options

-- | Constructs UpdateFunctionConfigurationRequest from required parameters
newUpdateFunctionConfigurationRequest :: FunctionName -> UpdateFunctionConfigurationRequest
newUpdateFunctionConfigurationRequest _FunctionName = UpdateFunctionConfigurationRequest { "FunctionName": _FunctionName, "Description": (NullOrUndefined Nothing), "Handler": (NullOrUndefined Nothing), "MemorySize": (NullOrUndefined Nothing), "Role": (NullOrUndefined Nothing), "Timeout": (NullOrUndefined Nothing) }

-- | Constructs UpdateFunctionConfigurationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateFunctionConfigurationRequest' :: FunctionName -> ( { "FunctionName" :: (FunctionName) , "Role" :: NullOrUndefined (RoleArn) , "Handler" :: NullOrUndefined (Handler) , "Description" :: NullOrUndefined (Description) , "Timeout" :: NullOrUndefined (Timeout) , "MemorySize" :: NullOrUndefined (MemorySize) } -> {"FunctionName" :: (FunctionName) , "Role" :: NullOrUndefined (RoleArn) , "Handler" :: NullOrUndefined (Handler) , "Description" :: NullOrUndefined (Description) , "Timeout" :: NullOrUndefined (Timeout) , "MemorySize" :: NullOrUndefined (MemorySize) } ) -> UpdateFunctionConfigurationRequest
newUpdateFunctionConfigurationRequest' _FunctionName customize = (UpdateFunctionConfigurationRequest <<< customize) { "FunctionName": _FunctionName, "Description": (NullOrUndefined Nothing), "Handler": (NullOrUndefined Nothing), "MemorySize": (NullOrUndefined Nothing), "Role": (NullOrUndefined Nothing), "Timeout": (NullOrUndefined Nothing) }



newtype UploadFunctionRequest = UploadFunctionRequest 
  { "FunctionName" :: (FunctionName)
  , "FunctionZip" :: (String)
  , "Runtime" :: (Runtime)
  , "Role" :: (RoleArn)
  , "Handler" :: (Handler)
  , "Mode" :: (Mode)
  , "Description" :: NullOrUndefined (Description)
  , "Timeout" :: NullOrUndefined (Timeout)
  , "MemorySize" :: NullOrUndefined (MemorySize)
  }
derive instance newtypeUploadFunctionRequest :: Newtype UploadFunctionRequest _
derive instance repGenericUploadFunctionRequest :: Generic UploadFunctionRequest _
instance showUploadFunctionRequest :: Show UploadFunctionRequest where show = genericShow
instance decodeUploadFunctionRequest :: Decode UploadFunctionRequest where decode = genericDecode options
instance encodeUploadFunctionRequest :: Encode UploadFunctionRequest where encode = genericEncode options

-- | Constructs UploadFunctionRequest from required parameters
newUploadFunctionRequest :: FunctionName -> String -> Handler -> Mode -> RoleArn -> Runtime -> UploadFunctionRequest
newUploadFunctionRequest _FunctionName _FunctionZip _Handler _Mode _Role _Runtime = UploadFunctionRequest { "FunctionName": _FunctionName, "FunctionZip": _FunctionZip, "Handler": _Handler, "Mode": _Mode, "Role": _Role, "Runtime": _Runtime, "Description": (NullOrUndefined Nothing), "MemorySize": (NullOrUndefined Nothing), "Timeout": (NullOrUndefined Nothing) }

-- | Constructs UploadFunctionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUploadFunctionRequest' :: FunctionName -> String -> Handler -> Mode -> RoleArn -> Runtime -> ( { "FunctionName" :: (FunctionName) , "FunctionZip" :: (String) , "Runtime" :: (Runtime) , "Role" :: (RoleArn) , "Handler" :: (Handler) , "Mode" :: (Mode) , "Description" :: NullOrUndefined (Description) , "Timeout" :: NullOrUndefined (Timeout) , "MemorySize" :: NullOrUndefined (MemorySize) } -> {"FunctionName" :: (FunctionName) , "FunctionZip" :: (String) , "Runtime" :: (Runtime) , "Role" :: (RoleArn) , "Handler" :: (Handler) , "Mode" :: (Mode) , "Description" :: NullOrUndefined (Description) , "Timeout" :: NullOrUndefined (Timeout) , "MemorySize" :: NullOrUndefined (MemorySize) } ) -> UploadFunctionRequest
newUploadFunctionRequest' _FunctionName _FunctionZip _Handler _Mode _Role _Runtime customize = (UploadFunctionRequest <<< customize) { "FunctionName": _FunctionName, "FunctionZip": _FunctionZip, "Handler": _Handler, "Mode": _Mode, "Role": _Role, "Runtime": _Runtime, "Description": (NullOrUndefined Nothing), "MemorySize": (NullOrUndefined Nothing), "Timeout": (NullOrUndefined Nothing) }

