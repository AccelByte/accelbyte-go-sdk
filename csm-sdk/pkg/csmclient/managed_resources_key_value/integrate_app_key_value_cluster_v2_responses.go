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

// IntegrateAppKeyValueClusterV2Reader is a Reader for the IntegrateAppKeyValueClusterV2 structure.
type IntegrateAppKeyValueClusterV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *IntegrateAppKeyValueClusterV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewIntegrateAppKeyValueClusterV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewIntegrateAppKeyValueClusterV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewIntegrateAppKeyValueClusterV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewIntegrateAppKeyValueClusterV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewIntegrateAppKeyValueClusterV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewIntegrateAppKeyValueClusterV2Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewIntegrateAppKeyValueClusterV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewIntegrateAppKeyValueClusterV2OK creates a IntegrateAppKeyValueClusterV2OK with default headers values
func NewIntegrateAppKeyValueClusterV2OK() *IntegrateAppKeyValueClusterV2OK {
	return &IntegrateAppKeyValueClusterV2OK{}
}

/*IntegrateAppKeyValueClusterV2OK handles this case with default header values.

  OK
*/
type IntegrateAppKeyValueClusterV2OK struct {
	Payload *csmclientmodels.ApimodelIntegrateAppKeyValueResponse
}

func (o *IntegrateAppKeyValueClusterV2OK) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations][%d] integrateAppKeyValueClusterV2OK  %+v", 200, o.ToJSONString())
}

func (o *IntegrateAppKeyValueClusterV2OK) ToJSONString() string {
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

func (o *IntegrateAppKeyValueClusterV2OK) GetPayload() *csmclientmodels.ApimodelIntegrateAppKeyValueResponse {
	return o.Payload
}

func (o *IntegrateAppKeyValueClusterV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelIntegrateAppKeyValueResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewIntegrateAppKeyValueClusterV2BadRequest creates a IntegrateAppKeyValueClusterV2BadRequest with default headers values
func NewIntegrateAppKeyValueClusterV2BadRequest() *IntegrateAppKeyValueClusterV2BadRequest {
	return &IntegrateAppKeyValueClusterV2BadRequest{}
}

/*IntegrateAppKeyValueClusterV2BadRequest handles this case with default header values.

  Bad Request
*/
type IntegrateAppKeyValueClusterV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *IntegrateAppKeyValueClusterV2BadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations][%d] integrateAppKeyValueClusterV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *IntegrateAppKeyValueClusterV2BadRequest) ToJSONString() string {
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

func (o *IntegrateAppKeyValueClusterV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *IntegrateAppKeyValueClusterV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewIntegrateAppKeyValueClusterV2Unauthorized creates a IntegrateAppKeyValueClusterV2Unauthorized with default headers values
func NewIntegrateAppKeyValueClusterV2Unauthorized() *IntegrateAppKeyValueClusterV2Unauthorized {
	return &IntegrateAppKeyValueClusterV2Unauthorized{}
}

/*IntegrateAppKeyValueClusterV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type IntegrateAppKeyValueClusterV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *IntegrateAppKeyValueClusterV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations][%d] integrateAppKeyValueClusterV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *IntegrateAppKeyValueClusterV2Unauthorized) ToJSONString() string {
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

func (o *IntegrateAppKeyValueClusterV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *IntegrateAppKeyValueClusterV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewIntegrateAppKeyValueClusterV2Forbidden creates a IntegrateAppKeyValueClusterV2Forbidden with default headers values
func NewIntegrateAppKeyValueClusterV2Forbidden() *IntegrateAppKeyValueClusterV2Forbidden {
	return &IntegrateAppKeyValueClusterV2Forbidden{}
}

/*IntegrateAppKeyValueClusterV2Forbidden handles this case with default header values.

  Forbidden
*/
type IntegrateAppKeyValueClusterV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *IntegrateAppKeyValueClusterV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations][%d] integrateAppKeyValueClusterV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *IntegrateAppKeyValueClusterV2Forbidden) ToJSONString() string {
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

func (o *IntegrateAppKeyValueClusterV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *IntegrateAppKeyValueClusterV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewIntegrateAppKeyValueClusterV2NotFound creates a IntegrateAppKeyValueClusterV2NotFound with default headers values
func NewIntegrateAppKeyValueClusterV2NotFound() *IntegrateAppKeyValueClusterV2NotFound {
	return &IntegrateAppKeyValueClusterV2NotFound{}
}

/*IntegrateAppKeyValueClusterV2NotFound handles this case with default header values.

  Not Found
*/
type IntegrateAppKeyValueClusterV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *IntegrateAppKeyValueClusterV2NotFound) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations][%d] integrateAppKeyValueClusterV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *IntegrateAppKeyValueClusterV2NotFound) ToJSONString() string {
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

func (o *IntegrateAppKeyValueClusterV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *IntegrateAppKeyValueClusterV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewIntegrateAppKeyValueClusterV2Conflict creates a IntegrateAppKeyValueClusterV2Conflict with default headers values
func NewIntegrateAppKeyValueClusterV2Conflict() *IntegrateAppKeyValueClusterV2Conflict {
	return &IntegrateAppKeyValueClusterV2Conflict{}
}

/*IntegrateAppKeyValueClusterV2Conflict handles this case with default header values.

  Conflict
*/
type IntegrateAppKeyValueClusterV2Conflict struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *IntegrateAppKeyValueClusterV2Conflict) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations][%d] integrateAppKeyValueClusterV2Conflict  %+v", 409, o.ToJSONString())
}

func (o *IntegrateAppKeyValueClusterV2Conflict) ToJSONString() string {
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

func (o *IntegrateAppKeyValueClusterV2Conflict) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *IntegrateAppKeyValueClusterV2Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewIntegrateAppKeyValueClusterV2InternalServerError creates a IntegrateAppKeyValueClusterV2InternalServerError with default headers values
func NewIntegrateAppKeyValueClusterV2InternalServerError() *IntegrateAppKeyValueClusterV2InternalServerError {
	return &IntegrateAppKeyValueClusterV2InternalServerError{}
}

/*IntegrateAppKeyValueClusterV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type IntegrateAppKeyValueClusterV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *IntegrateAppKeyValueClusterV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations][%d] integrateAppKeyValueClusterV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *IntegrateAppKeyValueClusterV2InternalServerError) ToJSONString() string {
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

func (o *IntegrateAppKeyValueClusterV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *IntegrateAppKeyValueClusterV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
