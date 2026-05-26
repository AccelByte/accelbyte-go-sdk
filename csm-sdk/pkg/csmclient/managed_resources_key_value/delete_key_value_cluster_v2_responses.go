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

// DeleteKeyValueClusterV2Reader is a Reader for the DeleteKeyValueClusterV2 structure.
type DeleteKeyValueClusterV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteKeyValueClusterV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDeleteKeyValueClusterV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteKeyValueClusterV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteKeyValueClusterV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteKeyValueClusterV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewDeleteKeyValueClusterV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteKeyValueClusterV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/{resourceId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteKeyValueClusterV2OK creates a DeleteKeyValueClusterV2OK with default headers values
func NewDeleteKeyValueClusterV2OK() *DeleteKeyValueClusterV2OK {
	return &DeleteKeyValueClusterV2OK{}
}

/*DeleteKeyValueClusterV2OK handles this case with default header values.

  OK
*/
type DeleteKeyValueClusterV2OK struct {
	Payload *csmclientmodels.ApimodelKeyValueResourceResponse
}

func (o *DeleteKeyValueClusterV2OK) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/{resourceId}][%d] deleteKeyValueClusterV2OK  %+v", 200, o.ToJSONString())
}

func (o *DeleteKeyValueClusterV2OK) ToJSONString() string {
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

func (o *DeleteKeyValueClusterV2OK) GetPayload() *csmclientmodels.ApimodelKeyValueResourceResponse {
	return o.Payload
}

func (o *DeleteKeyValueClusterV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelKeyValueResourceResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteKeyValueClusterV2Unauthorized creates a DeleteKeyValueClusterV2Unauthorized with default headers values
func NewDeleteKeyValueClusterV2Unauthorized() *DeleteKeyValueClusterV2Unauthorized {
	return &DeleteKeyValueClusterV2Unauthorized{}
}

/*DeleteKeyValueClusterV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteKeyValueClusterV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteKeyValueClusterV2Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/{resourceId}][%d] deleteKeyValueClusterV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteKeyValueClusterV2Unauthorized) ToJSONString() string {
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

func (o *DeleteKeyValueClusterV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteKeyValueClusterV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteKeyValueClusterV2Forbidden creates a DeleteKeyValueClusterV2Forbidden with default headers values
func NewDeleteKeyValueClusterV2Forbidden() *DeleteKeyValueClusterV2Forbidden {
	return &DeleteKeyValueClusterV2Forbidden{}
}

/*DeleteKeyValueClusterV2Forbidden handles this case with default header values.

  Forbidden
*/
type DeleteKeyValueClusterV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteKeyValueClusterV2Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/{resourceId}][%d] deleteKeyValueClusterV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteKeyValueClusterV2Forbidden) ToJSONString() string {
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

func (o *DeleteKeyValueClusterV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteKeyValueClusterV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteKeyValueClusterV2NotFound creates a DeleteKeyValueClusterV2NotFound with default headers values
func NewDeleteKeyValueClusterV2NotFound() *DeleteKeyValueClusterV2NotFound {
	return &DeleteKeyValueClusterV2NotFound{}
}

/*DeleteKeyValueClusterV2NotFound handles this case with default header values.

  Not Found
*/
type DeleteKeyValueClusterV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteKeyValueClusterV2NotFound) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/{resourceId}][%d] deleteKeyValueClusterV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteKeyValueClusterV2NotFound) ToJSONString() string {
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

func (o *DeleteKeyValueClusterV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteKeyValueClusterV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteKeyValueClusterV2Conflict creates a DeleteKeyValueClusterV2Conflict with default headers values
func NewDeleteKeyValueClusterV2Conflict() *DeleteKeyValueClusterV2Conflict {
	return &DeleteKeyValueClusterV2Conflict{}
}

/*DeleteKeyValueClusterV2Conflict handles this case with default header values.

  Conflict
*/
type DeleteKeyValueClusterV2Conflict struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteKeyValueClusterV2Conflict) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/{resourceId}][%d] deleteKeyValueClusterV2Conflict  %+v", 409, o.ToJSONString())
}

func (o *DeleteKeyValueClusterV2Conflict) ToJSONString() string {
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

func (o *DeleteKeyValueClusterV2Conflict) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteKeyValueClusterV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteKeyValueClusterV2InternalServerError creates a DeleteKeyValueClusterV2InternalServerError with default headers values
func NewDeleteKeyValueClusterV2InternalServerError() *DeleteKeyValueClusterV2InternalServerError {
	return &DeleteKeyValueClusterV2InternalServerError{}
}

/*DeleteKeyValueClusterV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteKeyValueClusterV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteKeyValueClusterV2InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/{resourceId}][%d] deleteKeyValueClusterV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteKeyValueClusterV2InternalServerError) ToJSONString() string {
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

func (o *DeleteKeyValueClusterV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteKeyValueClusterV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
