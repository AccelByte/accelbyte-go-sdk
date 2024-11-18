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

// UpdateSecretV1Reader is a Reader for the UpdateSecretV1 structure.
type UpdateSecretV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateSecretV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateSecretV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateSecretV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateSecretV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateSecretV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateSecretV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateSecretV1OK creates a UpdateSecretV1OK with default headers values
func NewUpdateSecretV1OK() *UpdateSecretV1OK {
	return &UpdateSecretV1OK{}
}

/*UpdateSecretV1OK handles this case with default header values.

  OK
*/
type UpdateSecretV1OK struct {
	Payload *csmclientmodels.GeneratedUpdateConfigurationV1Response
}

func (o *UpdateSecretV1OK) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}][%d] updateSecretV1OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateSecretV1OK) ToJSONString() string {
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

func (o *UpdateSecretV1OK) GetPayload() *csmclientmodels.GeneratedUpdateConfigurationV1Response {
	return o.Payload
}

func (o *UpdateSecretV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateSecretV1BadRequest creates a UpdateSecretV1BadRequest with default headers values
func NewUpdateSecretV1BadRequest() *UpdateSecretV1BadRequest {
	return &UpdateSecretV1BadRequest{}
}

/*UpdateSecretV1BadRequest handles this case with default header values.

  Bad Request
*/
type UpdateSecretV1BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateSecretV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}][%d] updateSecretV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateSecretV1BadRequest) ToJSONString() string {
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

func (o *UpdateSecretV1BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateSecretV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateSecretV1Unauthorized creates a UpdateSecretV1Unauthorized with default headers values
func NewUpdateSecretV1Unauthorized() *UpdateSecretV1Unauthorized {
	return &UpdateSecretV1Unauthorized{}
}

/*UpdateSecretV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateSecretV1Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateSecretV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}][%d] updateSecretV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateSecretV1Unauthorized) ToJSONString() string {
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

func (o *UpdateSecretV1Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateSecretV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateSecretV1Forbidden creates a UpdateSecretV1Forbidden with default headers values
func NewUpdateSecretV1Forbidden() *UpdateSecretV1Forbidden {
	return &UpdateSecretV1Forbidden{}
}

/*UpdateSecretV1Forbidden handles this case with default header values.

  Forbidden
*/
type UpdateSecretV1Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateSecretV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}][%d] updateSecretV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateSecretV1Forbidden) ToJSONString() string {
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

func (o *UpdateSecretV1Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateSecretV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateSecretV1InternalServerError creates a UpdateSecretV1InternalServerError with default headers values
func NewUpdateSecretV1InternalServerError() *UpdateSecretV1InternalServerError {
	return &UpdateSecretV1InternalServerError{}
}

/*UpdateSecretV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateSecretV1InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UpdateSecretV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}][%d] updateSecretV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateSecretV1InternalServerError) ToJSONString() string {
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

func (o *UpdateSecretV1InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UpdateSecretV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
