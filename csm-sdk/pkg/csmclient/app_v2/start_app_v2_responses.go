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

// StartAppV2Reader is a Reader for the StartAppV2 structure.
type StartAppV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *StartAppV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 202:
		result := NewStartAppV2Accepted()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewStartAppV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewStartAppV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewStartAppV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewStartAppV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewStartAppV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/start returns an error %d: %s", response.Code(), string(data))
	}
}

// NewStartAppV2Accepted creates a StartAppV2Accepted with default headers values
func NewStartAppV2Accepted() *StartAppV2Accepted {
	return &StartAppV2Accepted{}
}

/*StartAppV2Accepted handles this case with default header values.

  This means the request to start the application is accepted, and it will be processed in the background.
*/
type StartAppV2Accepted struct {
}

func (o *StartAppV2Accepted) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/start][%d] startAppV2Accepted ", 202)
}

func (o *StartAppV2Accepted) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewStartAppV2BadRequest creates a StartAppV2BadRequest with default headers values
func NewStartAppV2BadRequest() *StartAppV2BadRequest {
	return &StartAppV2BadRequest{}
}

/*StartAppV2BadRequest handles this case with default header values.

  Bad Request
*/
type StartAppV2BadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StartAppV2BadRequest) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/start][%d] startAppV2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *StartAppV2BadRequest) ToJSONString() string {
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

func (o *StartAppV2BadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StartAppV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStartAppV2Unauthorized creates a StartAppV2Unauthorized with default headers values
func NewStartAppV2Unauthorized() *StartAppV2Unauthorized {
	return &StartAppV2Unauthorized{}
}

/*StartAppV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type StartAppV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StartAppV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/start][%d] startAppV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *StartAppV2Unauthorized) ToJSONString() string {
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

func (o *StartAppV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StartAppV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStartAppV2Forbidden creates a StartAppV2Forbidden with default headers values
func NewStartAppV2Forbidden() *StartAppV2Forbidden {
	return &StartAppV2Forbidden{}
}

/*StartAppV2Forbidden handles this case with default header values.

  Forbidden
*/
type StartAppV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StartAppV2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/start][%d] startAppV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *StartAppV2Forbidden) ToJSONString() string {
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

func (o *StartAppV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StartAppV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStartAppV2NotFound creates a StartAppV2NotFound with default headers values
func NewStartAppV2NotFound() *StartAppV2NotFound {
	return &StartAppV2NotFound{}
}

/*StartAppV2NotFound handles this case with default header values.

  Not Found
*/
type StartAppV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StartAppV2NotFound) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/start][%d] startAppV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *StartAppV2NotFound) ToJSONString() string {
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

func (o *StartAppV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StartAppV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewStartAppV2InternalServerError creates a StartAppV2InternalServerError with default headers values
func NewStartAppV2InternalServerError() *StartAppV2InternalServerError {
	return &StartAppV2InternalServerError{}
}

/*StartAppV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type StartAppV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *StartAppV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/start][%d] startAppV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *StartAppV2InternalServerError) ToJSONString() string {
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

func (o *StartAppV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *StartAppV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
