// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package managed_resources_key_value

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
)

// RemoveIntegrationAppKeyValueClusterV2Reader is a Reader for the RemoveIntegrationAppKeyValueClusterV2 structure.
type RemoveIntegrationAppKeyValueClusterV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RemoveIntegrationAppKeyValueClusterV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewRemoveIntegrationAppKeyValueClusterV2NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRemoveIntegrationAppKeyValueClusterV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRemoveIntegrationAppKeyValueClusterV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRemoveIntegrationAppKeyValueClusterV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRemoveIntegrationAppKeyValueClusterV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRemoveIntegrationAppKeyValueClusterV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRemoveIntegrationAppKeyValueClusterV2NoContent creates a RemoveIntegrationAppKeyValueClusterV2NoContent with default headers values
func NewRemoveIntegrationAppKeyValueClusterV2NoContent() *RemoveIntegrationAppKeyValueClusterV2NoContent {
	return &RemoveIntegrationAppKeyValueClusterV2NoContent{}
}

/*RemoveIntegrationAppKeyValueClusterV2NoContent handles this case with default header values.

  No Content
*/
type RemoveIntegrationAppKeyValueClusterV2NoContent struct {
}

func (o *RemoveIntegrationAppKeyValueClusterV2NoContent) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations][%d] removeIntegrationAppKeyValueClusterV2NoContent ", 204)
}

func (o *RemoveIntegrationAppKeyValueClusterV2NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewRemoveIntegrationAppKeyValueClusterV2BadRequest creates a RemoveIntegrationAppKeyValueClusterV2BadRequest with default headers values
func NewRemoveIntegrationAppKeyValueClusterV2BadRequest() *RemoveIntegrationAppKeyValueClusterV2BadRequest {
	return &RemoveIntegrationAppKeyValueClusterV2BadRequest{}
}

/*RemoveIntegrationAppKeyValueClusterV2BadRequest handles this case with default header values.

  Bad Request
*/
type RemoveIntegrationAppKeyValueClusterV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *RemoveIntegrationAppKeyValueClusterV2BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations][%d] removeIntegrationAppKeyValueClusterV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *RemoveIntegrationAppKeyValueClusterV2BadRequest) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *RemoveIntegrationAppKeyValueClusterV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RemoveIntegrationAppKeyValueClusterV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRemoveIntegrationAppKeyValueClusterV2Unauthorized creates a RemoveIntegrationAppKeyValueClusterV2Unauthorized with default headers values
func NewRemoveIntegrationAppKeyValueClusterV2Unauthorized() *RemoveIntegrationAppKeyValueClusterV2Unauthorized {
	return &RemoveIntegrationAppKeyValueClusterV2Unauthorized{}
}

/*RemoveIntegrationAppKeyValueClusterV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type RemoveIntegrationAppKeyValueClusterV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *RemoveIntegrationAppKeyValueClusterV2Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations][%d] removeIntegrationAppKeyValueClusterV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *RemoveIntegrationAppKeyValueClusterV2Unauthorized) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *RemoveIntegrationAppKeyValueClusterV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RemoveIntegrationAppKeyValueClusterV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRemoveIntegrationAppKeyValueClusterV2Forbidden creates a RemoveIntegrationAppKeyValueClusterV2Forbidden with default headers values
func NewRemoveIntegrationAppKeyValueClusterV2Forbidden() *RemoveIntegrationAppKeyValueClusterV2Forbidden {
	return &RemoveIntegrationAppKeyValueClusterV2Forbidden{}
}

/*RemoveIntegrationAppKeyValueClusterV2Forbidden handles this case with default header values.

  Forbidden
*/
type RemoveIntegrationAppKeyValueClusterV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *RemoveIntegrationAppKeyValueClusterV2Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations][%d] removeIntegrationAppKeyValueClusterV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *RemoveIntegrationAppKeyValueClusterV2Forbidden) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *RemoveIntegrationAppKeyValueClusterV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RemoveIntegrationAppKeyValueClusterV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRemoveIntegrationAppKeyValueClusterV2NotFound creates a RemoveIntegrationAppKeyValueClusterV2NotFound with default headers values
func NewRemoveIntegrationAppKeyValueClusterV2NotFound() *RemoveIntegrationAppKeyValueClusterV2NotFound {
	return &RemoveIntegrationAppKeyValueClusterV2NotFound{}
}

/*RemoveIntegrationAppKeyValueClusterV2NotFound handles this case with default header values.

  Not Found
*/
type RemoveIntegrationAppKeyValueClusterV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *RemoveIntegrationAppKeyValueClusterV2NotFound) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations][%d] removeIntegrationAppKeyValueClusterV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *RemoveIntegrationAppKeyValueClusterV2NotFound) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *RemoveIntegrationAppKeyValueClusterV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RemoveIntegrationAppKeyValueClusterV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRemoveIntegrationAppKeyValueClusterV2InternalServerError creates a RemoveIntegrationAppKeyValueClusterV2InternalServerError with default headers values
func NewRemoveIntegrationAppKeyValueClusterV2InternalServerError() *RemoveIntegrationAppKeyValueClusterV2InternalServerError {
	return &RemoveIntegrationAppKeyValueClusterV2InternalServerError{}
}

/*RemoveIntegrationAppKeyValueClusterV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type RemoveIntegrationAppKeyValueClusterV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *RemoveIntegrationAppKeyValueClusterV2InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations][%d] removeIntegrationAppKeyValueClusterV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *RemoveIntegrationAppKeyValueClusterV2InternalServerError) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *RemoveIntegrationAppKeyValueClusterV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *RemoveIntegrationAppKeyValueClusterV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
