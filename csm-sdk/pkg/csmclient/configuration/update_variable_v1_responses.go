// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration

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

// UpdateVariableV1Reader is a Reader for the UpdateVariableV1 structure.
type UpdateVariableV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateVariableV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateVariableV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateVariableV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateVariableV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateVariableV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateVariableV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateVariableV1OK creates a UpdateVariableV1OK with default headers values
func NewUpdateVariableV1OK() *UpdateVariableV1OK {
	return &UpdateVariableV1OK{}
}

/*UpdateVariableV1OK handles this case with default header values.

  OK
*/
type UpdateVariableV1OK struct {
	Payload *csmclientmodels.GeneratedUpdateConfigurationV1Response
}

func (o *UpdateVariableV1OK) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId}][%d] updateVariableV1OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateVariableV1OK) ToJSONString() string {
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

func (o *UpdateVariableV1OK) GetPayload() *csmclientmodels.GeneratedUpdateConfigurationV1Response {
	return o.Payload
}

func (o *UpdateVariableV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.GeneratedUpdateConfigurationV1Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateVariableV1BadRequest creates a UpdateVariableV1BadRequest with default headers values
func NewUpdateVariableV1BadRequest() *UpdateVariableV1BadRequest {
	return &UpdateVariableV1BadRequest{}
}

/*UpdateVariableV1BadRequest handles this case with default header values.

  Bad Request
*/
type UpdateVariableV1BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateVariableV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId}][%d] updateVariableV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateVariableV1BadRequest) ToJSONString() string {
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

func (o *UpdateVariableV1BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateVariableV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateVariableV1Unauthorized creates a UpdateVariableV1Unauthorized with default headers values
func NewUpdateVariableV1Unauthorized() *UpdateVariableV1Unauthorized {
	return &UpdateVariableV1Unauthorized{}
}

/*UpdateVariableV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateVariableV1Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateVariableV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId}][%d] updateVariableV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateVariableV1Unauthorized) ToJSONString() string {
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

func (o *UpdateVariableV1Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateVariableV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateVariableV1Forbidden creates a UpdateVariableV1Forbidden with default headers values
func NewUpdateVariableV1Forbidden() *UpdateVariableV1Forbidden {
	return &UpdateVariableV1Forbidden{}
}

/*UpdateVariableV1Forbidden handles this case with default header values.

  Forbidden
*/
type UpdateVariableV1Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateVariableV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId}][%d] updateVariableV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateVariableV1Forbidden) ToJSONString() string {
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

func (o *UpdateVariableV1Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateVariableV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateVariableV1InternalServerError creates a UpdateVariableV1InternalServerError with default headers values
func NewUpdateVariableV1InternalServerError() *UpdateVariableV1InternalServerError {
	return &UpdateVariableV1InternalServerError{}
}

/*UpdateVariableV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateVariableV1InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateVariableV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId}][%d] updateVariableV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateVariableV1InternalServerError) ToJSONString() string {
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

func (o *UpdateVariableV1InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateVariableV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
