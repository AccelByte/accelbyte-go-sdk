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

// StartAppV1Reader is a Reader for the StartAppV1 structure.
type StartAppV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *StartAppV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewStartAppV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewStartAppV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewStartAppV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewStartAppV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewStartAppV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewStartAppV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/start returns an error %d: %s", response.Code(), string(data))
	}
}

// NewStartAppV1OK creates a StartAppV1OK with default headers values
func NewStartAppV1OK() *StartAppV1OK {
	return &StartAppV1OK{}
}

/*StartAppV1OK handles this case with default header values.

  OK
*/
type StartAppV1OK struct {
	Payload *csmclientmodels.GeneratedStartAppV1Response
}

func (o *StartAppV1OK) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/start][%d] startAppV1OK  %+v", 200, o.ToJSONString())
}

func (o *StartAppV1OK) ToJSONString() string {
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

func (o *StartAppV1OK) GetPayload() *csmclientmodels.GeneratedStartAppV1Response {
	return o.Payload
}

func (o *StartAppV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.GeneratedStartAppV1Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewStartAppV1BadRequest creates a StartAppV1BadRequest with default headers values
func NewStartAppV1BadRequest() *StartAppV1BadRequest {
	return &StartAppV1BadRequest{}
}

/*StartAppV1BadRequest handles this case with default header values.

  Bad Request
*/
type StartAppV1BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StartAppV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/start][%d] startAppV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *StartAppV1BadRequest) ToJSONString() string {
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

func (o *StartAppV1BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StartAppV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStartAppV1Unauthorized creates a StartAppV1Unauthorized with default headers values
func NewStartAppV1Unauthorized() *StartAppV1Unauthorized {
	return &StartAppV1Unauthorized{}
}

/*StartAppV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type StartAppV1Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StartAppV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/start][%d] startAppV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *StartAppV1Unauthorized) ToJSONString() string {
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

func (o *StartAppV1Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StartAppV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStartAppV1Forbidden creates a StartAppV1Forbidden with default headers values
func NewStartAppV1Forbidden() *StartAppV1Forbidden {
	return &StartAppV1Forbidden{}
}

/*StartAppV1Forbidden handles this case with default header values.

  Forbidden
*/
type StartAppV1Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StartAppV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/start][%d] startAppV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *StartAppV1Forbidden) ToJSONString() string {
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

func (o *StartAppV1Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StartAppV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStartAppV1NotFound creates a StartAppV1NotFound with default headers values
func NewStartAppV1NotFound() *StartAppV1NotFound {
	return &StartAppV1NotFound{}
}

/*StartAppV1NotFound handles this case with default header values.

  Not Found
*/
type StartAppV1NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StartAppV1NotFound) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/start][%d] startAppV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *StartAppV1NotFound) ToJSONString() string {
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

func (o *StartAppV1NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StartAppV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStartAppV1InternalServerError creates a StartAppV1InternalServerError with default headers values
func NewStartAppV1InternalServerError() *StartAppV1InternalServerError {
	return &StartAppV1InternalServerError{}
}

/*StartAppV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type StartAppV1InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StartAppV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/start][%d] startAppV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *StartAppV1InternalServerError) ToJSONString() string {
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

func (o *StartAppV1InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StartAppV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
