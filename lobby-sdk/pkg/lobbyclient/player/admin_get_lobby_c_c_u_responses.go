// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package player

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// AdminGetLobbyCCUReader is a Reader for the AdminGetLobbyCCU structure.
type AdminGetLobbyCCUReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetLobbyCCUReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetLobbyCCUOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetLobbyCCUBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetLobbyCCUUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetLobbyCCUForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetLobbyCCUNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetLobbyCCUInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/player/namespaces/{namespace}/ccu returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetLobbyCCUOK creates a AdminGetLobbyCCUOK with default headers values
func NewAdminGetLobbyCCUOK() *AdminGetLobbyCCUOK {
	return &AdminGetLobbyCCUOK{}
}

/*AdminGetLobbyCCUOK handles this case with default header values.

  OK
*/
type AdminGetLobbyCCUOK struct {
	Payload *lobbyclientmodels.ModelsGetLobbyCcuResponse
}

func (o *AdminGetLobbyCCUOK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/ccu][%d] adminGetLobbyCCUOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetLobbyCCUOK) ToJSONString() string {
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

func (o *AdminGetLobbyCCUOK) GetPayload() *lobbyclientmodels.ModelsGetLobbyCcuResponse {
	return o.Payload
}

func (o *AdminGetLobbyCCUOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelsGetLobbyCcuResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetLobbyCCUBadRequest creates a AdminGetLobbyCCUBadRequest with default headers values
func NewAdminGetLobbyCCUBadRequest() *AdminGetLobbyCCUBadRequest {
	return &AdminGetLobbyCCUBadRequest{}
}

/*AdminGetLobbyCCUBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetLobbyCCUBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetLobbyCCUBadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/ccu][%d] adminGetLobbyCCUBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetLobbyCCUBadRequest) ToJSONString() string {
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

func (o *AdminGetLobbyCCUBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetLobbyCCUBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetLobbyCCUUnauthorized creates a AdminGetLobbyCCUUnauthorized with default headers values
func NewAdminGetLobbyCCUUnauthorized() *AdminGetLobbyCCUUnauthorized {
	return &AdminGetLobbyCCUUnauthorized{}
}

/*AdminGetLobbyCCUUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetLobbyCCUUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetLobbyCCUUnauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/ccu][%d] adminGetLobbyCCUUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetLobbyCCUUnauthorized) ToJSONString() string {
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

func (o *AdminGetLobbyCCUUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetLobbyCCUUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetLobbyCCUForbidden creates a AdminGetLobbyCCUForbidden with default headers values
func NewAdminGetLobbyCCUForbidden() *AdminGetLobbyCCUForbidden {
	return &AdminGetLobbyCCUForbidden{}
}

/*AdminGetLobbyCCUForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetLobbyCCUForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetLobbyCCUForbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/ccu][%d] adminGetLobbyCCUForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetLobbyCCUForbidden) ToJSONString() string {
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

func (o *AdminGetLobbyCCUForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetLobbyCCUForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetLobbyCCUNotFound creates a AdminGetLobbyCCUNotFound with default headers values
func NewAdminGetLobbyCCUNotFound() *AdminGetLobbyCCUNotFound {
	return &AdminGetLobbyCCUNotFound{}
}

/*AdminGetLobbyCCUNotFound handles this case with default header values.

  Not Found
*/
type AdminGetLobbyCCUNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetLobbyCCUNotFound) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/ccu][%d] adminGetLobbyCCUNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetLobbyCCUNotFound) ToJSONString() string {
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

func (o *AdminGetLobbyCCUNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetLobbyCCUNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetLobbyCCUInternalServerError creates a AdminGetLobbyCCUInternalServerError with default headers values
func NewAdminGetLobbyCCUInternalServerError() *AdminGetLobbyCCUInternalServerError {
	return &AdminGetLobbyCCUInternalServerError{}
}

/*AdminGetLobbyCCUInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetLobbyCCUInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminGetLobbyCCUInternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/player/namespaces/{namespace}/ccu][%d] adminGetLobbyCCUInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetLobbyCCUInternalServerError) ToJSONString() string {
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

func (o *AdminGetLobbyCCUInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminGetLobbyCCUInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
