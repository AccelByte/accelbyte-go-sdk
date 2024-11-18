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

// StopAppV1Reader is a Reader for the StopAppV1 structure.
type StopAppV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *StopAppV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewStopAppV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewStopAppV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewStopAppV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewStopAppV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewStopAppV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewStopAppV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/stop returns an error %d: %s", response.Code(), string(data))
	}
}

// NewStopAppV1OK creates a StopAppV1OK with default headers values
func NewStopAppV1OK() *StopAppV1OK {
	return &StopAppV1OK{}
}

/*StopAppV1OK handles this case with default header values.

  OK
*/
type StopAppV1OK struct {
	Payload *csmclientmodels.GeneratedStopAppV1Response
}

func (o *StopAppV1OK) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/stop][%d] stopAppV1OK  %+v", 200, o.ToJSONString())
}

func (o *StopAppV1OK) ToJSONString() string {
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

func (o *StopAppV1OK) GetPayload() *csmclientmodels.GeneratedStopAppV1Response {
	return o.Payload
}

func (o *StopAppV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.GeneratedStopAppV1Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewStopAppV1BadRequest creates a StopAppV1BadRequest with default headers values
func NewStopAppV1BadRequest() *StopAppV1BadRequest {
	return &StopAppV1BadRequest{}
}

/*StopAppV1BadRequest handles this case with default header values.

  Bad Request
*/
type StopAppV1BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StopAppV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/stop][%d] stopAppV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *StopAppV1BadRequest) ToJSONString() string {
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

func (o *StopAppV1BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StopAppV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStopAppV1Unauthorized creates a StopAppV1Unauthorized with default headers values
func NewStopAppV1Unauthorized() *StopAppV1Unauthorized {
	return &StopAppV1Unauthorized{}
}

/*StopAppV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type StopAppV1Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StopAppV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/stop][%d] stopAppV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *StopAppV1Unauthorized) ToJSONString() string {
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

func (o *StopAppV1Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StopAppV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStopAppV1Forbidden creates a StopAppV1Forbidden with default headers values
func NewStopAppV1Forbidden() *StopAppV1Forbidden {
	return &StopAppV1Forbidden{}
}

/*StopAppV1Forbidden handles this case with default header values.

  Forbidden
*/
type StopAppV1Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StopAppV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/stop][%d] stopAppV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *StopAppV1Forbidden) ToJSONString() string {
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

func (o *StopAppV1Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StopAppV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStopAppV1NotFound creates a StopAppV1NotFound with default headers values
func NewStopAppV1NotFound() *StopAppV1NotFound {
	return &StopAppV1NotFound{}
}

/*StopAppV1NotFound handles this case with default header values.

  Not Found
*/
type StopAppV1NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StopAppV1NotFound) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/stop][%d] stopAppV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *StopAppV1NotFound) ToJSONString() string {
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

func (o *StopAppV1NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StopAppV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStopAppV1InternalServerError creates a StopAppV1InternalServerError with default headers values
func NewStopAppV1InternalServerError() *StopAppV1InternalServerError {
	return &StopAppV1InternalServerError{}
}

/*StopAppV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type StopAppV1InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StopAppV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /csm/v1/admin/namespaces/{namespace}/apps/{app}/stop][%d] stopAppV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *StopAppV1InternalServerError) ToJSONString() string {
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

func (o *StopAppV1InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StopAppV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
