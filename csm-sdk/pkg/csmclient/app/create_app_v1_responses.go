// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package app

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

// CreateAppV1Reader is a Reader for the CreateAppV1 structure.
type CreateAppV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateAppV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCreateAppV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateAppV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateAppV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateAppV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateAppV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateAppV1Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateAppV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /csm/v1/admin/namespaces/{namespace}/apps/{app} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateAppV1OK creates a CreateAppV1OK with default headers values
func NewCreateAppV1OK() *CreateAppV1OK {
	return &CreateAppV1OK{}
}

/*CreateAppV1OK handles this case with default header values.

  OK
*/
type CreateAppV1OK struct {
	Payload *csmclientmodels.GeneratedCreateAppV1Response
}

func (o *CreateAppV1OK) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] createAppV1OK  %+v", 200, o.ToJSONString())
}

func (o *CreateAppV1OK) ToJSONString() string {
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

func (o *CreateAppV1OK) GetPayload() *csmclientmodels.GeneratedCreateAppV1Response {
	return o.Payload
}

func (o *CreateAppV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.GeneratedCreateAppV1Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateAppV1BadRequest creates a CreateAppV1BadRequest with default headers values
func NewCreateAppV1BadRequest() *CreateAppV1BadRequest {
	return &CreateAppV1BadRequest{}
}

/*CreateAppV1BadRequest handles this case with default header values.

  Bad Request
*/
type CreateAppV1BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateAppV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] createAppV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateAppV1BadRequest) ToJSONString() string {
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

func (o *CreateAppV1BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateAppV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateAppV1Unauthorized creates a CreateAppV1Unauthorized with default headers values
func NewCreateAppV1Unauthorized() *CreateAppV1Unauthorized {
	return &CreateAppV1Unauthorized{}
}

/*CreateAppV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type CreateAppV1Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateAppV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] createAppV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateAppV1Unauthorized) ToJSONString() string {
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

func (o *CreateAppV1Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateAppV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateAppV1Forbidden creates a CreateAppV1Forbidden with default headers values
func NewCreateAppV1Forbidden() *CreateAppV1Forbidden {
	return &CreateAppV1Forbidden{}
}

/*CreateAppV1Forbidden handles this case with default header values.

  Forbidden
*/
type CreateAppV1Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateAppV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] createAppV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateAppV1Forbidden) ToJSONString() string {
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

func (o *CreateAppV1Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateAppV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateAppV1NotFound creates a CreateAppV1NotFound with default headers values
func NewCreateAppV1NotFound() *CreateAppV1NotFound {
	return &CreateAppV1NotFound{}
}

/*CreateAppV1NotFound handles this case with default header values.

  Not Found
*/
type CreateAppV1NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateAppV1NotFound) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] createAppV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateAppV1NotFound) ToJSONString() string {
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

func (o *CreateAppV1NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateAppV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateAppV1Conflict creates a CreateAppV1Conflict with default headers values
func NewCreateAppV1Conflict() *CreateAppV1Conflict {
	return &CreateAppV1Conflict{}
}

/*CreateAppV1Conflict handles this case with default header values.

  Conflict
*/
type CreateAppV1Conflict struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateAppV1Conflict) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] createAppV1Conflict  %+v", 409, o.ToJSONString())
}

func (o *CreateAppV1Conflict) ToJSONString() string {
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

func (o *CreateAppV1Conflict) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateAppV1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateAppV1InternalServerError creates a CreateAppV1InternalServerError with default headers values
func NewCreateAppV1InternalServerError() *CreateAppV1InternalServerError {
	return &CreateAppV1InternalServerError{}
}

/*CreateAppV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateAppV1InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateAppV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}][%d] createAppV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateAppV1InternalServerError) ToJSONString() string {
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

func (o *CreateAppV1InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateAppV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
