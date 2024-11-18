// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package app_v2

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

// StopAppV2Reader is a Reader for the StopAppV2 structure.
type StopAppV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *StopAppV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 202:
		result := NewStopAppV2Accepted()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewStopAppV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewStopAppV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewStopAppV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewStopAppV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewStopAppV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/stop returns an error %d: %s", response.Code(), string(data))
	}
}

// NewStopAppV2Accepted creates a StopAppV2Accepted with default headers values
func NewStopAppV2Accepted() *StopAppV2Accepted {
	return &StopAppV2Accepted{}
}

/*StopAppV2Accepted handles this case with default header values.

  This means the request to stop the application is accepted, and it will be processed in the background.
*/
type StopAppV2Accepted struct {
}

func (o *StopAppV2Accepted) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/stop][%d] stopAppV2Accepted ", 202)
}

func (o *StopAppV2Accepted) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewStopAppV2BadRequest creates a StopAppV2BadRequest with default headers values
func NewStopAppV2BadRequest() *StopAppV2BadRequest {
	return &StopAppV2BadRequest{}
}

/*StopAppV2BadRequest handles this case with default header values.

  Bad Request
*/
type StopAppV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StopAppV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/stop][%d] stopAppV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *StopAppV2BadRequest) ToJSONString() string {
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

func (o *StopAppV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StopAppV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStopAppV2Unauthorized creates a StopAppV2Unauthorized with default headers values
func NewStopAppV2Unauthorized() *StopAppV2Unauthorized {
	return &StopAppV2Unauthorized{}
}

/*StopAppV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type StopAppV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StopAppV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/stop][%d] stopAppV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *StopAppV2Unauthorized) ToJSONString() string {
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

func (o *StopAppV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StopAppV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStopAppV2Forbidden creates a StopAppV2Forbidden with default headers values
func NewStopAppV2Forbidden() *StopAppV2Forbidden {
	return &StopAppV2Forbidden{}
}

/*StopAppV2Forbidden handles this case with default header values.

  Forbidden
*/
type StopAppV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StopAppV2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/stop][%d] stopAppV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *StopAppV2Forbidden) ToJSONString() string {
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

func (o *StopAppV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StopAppV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStopAppV2NotFound creates a StopAppV2NotFound with default headers values
func NewStopAppV2NotFound() *StopAppV2NotFound {
	return &StopAppV2NotFound{}
}

/*StopAppV2NotFound handles this case with default header values.

  Not Found
*/
type StopAppV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StopAppV2NotFound) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/stop][%d] stopAppV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *StopAppV2NotFound) ToJSONString() string {
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

func (o *StopAppV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StopAppV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStopAppV2InternalServerError creates a StopAppV2InternalServerError with default headers values
func NewStopAppV2InternalServerError() *StopAppV2InternalServerError {
	return &StopAppV2InternalServerError{}
}

/*StopAppV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type StopAppV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StopAppV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/stop][%d] stopAppV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *StopAppV2InternalServerError) ToJSONString() string {
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

func (o *StopAppV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StopAppV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
