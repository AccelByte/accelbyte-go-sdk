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

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// AdminGetPlayerAttributesReader is a Reader for the AdminGetPlayerAttributes structure.
type AdminGetPlayerAttributesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetPlayerAttributesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetPlayerAttributesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetPlayerAttributesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetPlayerAttributesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetPlayerAttributesNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetPlayerAttributesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/admin/namespaces/{namespace}/users/{userId}/attributes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetPlayerAttributesOK creates a AdminGetPlayerAttributesOK with default headers values
func NewAdminGetPlayerAttributesOK() *AdminGetPlayerAttributesOK {
	return &AdminGetPlayerAttributesOK{}
}

/*AdminGetPlayerAttributesOK handles this case with default header values.

  OK
*/
type AdminGetPlayerAttributesOK struct {
	Payload *sessionclientmodels.ApimodelsPlayerAttributesResponseBody
}

func (o *AdminGetPlayerAttributesOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/users/{userId}/attributes][%d] adminGetPlayerAttributesOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetPlayerAttributesOK) ToJSONString() string {
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

func (o *AdminGetPlayerAttributesOK) GetPayload() *sessionclientmodels.ApimodelsPlayerAttributesResponseBody {
	return o.Payload
}

func (o *AdminGetPlayerAttributesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsPlayerAttributesResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPlayerAttributesBadRequest creates a AdminGetPlayerAttributesBadRequest with default headers values
func NewAdminGetPlayerAttributesBadRequest() *AdminGetPlayerAttributesBadRequest {
	return &AdminGetPlayerAttributesBadRequest{}
}

/*AdminGetPlayerAttributesBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetPlayerAttributesBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetPlayerAttributesBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/users/{userId}/attributes][%d] adminGetPlayerAttributesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetPlayerAttributesBadRequest) ToJSONString() string {
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

func (o *AdminGetPlayerAttributesBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlayerAttributesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPlayerAttributesUnauthorized creates a AdminGetPlayerAttributesUnauthorized with default headers values
func NewAdminGetPlayerAttributesUnauthorized() *AdminGetPlayerAttributesUnauthorized {
	return &AdminGetPlayerAttributesUnauthorized{}
}

/*AdminGetPlayerAttributesUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetPlayerAttributesUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetPlayerAttributesUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/users/{userId}/attributes][%d] adminGetPlayerAttributesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetPlayerAttributesUnauthorized) ToJSONString() string {
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

func (o *AdminGetPlayerAttributesUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlayerAttributesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPlayerAttributesNotFound creates a AdminGetPlayerAttributesNotFound with default headers values
func NewAdminGetPlayerAttributesNotFound() *AdminGetPlayerAttributesNotFound {
	return &AdminGetPlayerAttributesNotFound{}
}

/*AdminGetPlayerAttributesNotFound handles this case with default header values.

  Not Found
*/
type AdminGetPlayerAttributesNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetPlayerAttributesNotFound) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/users/{userId}/attributes][%d] adminGetPlayerAttributesNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetPlayerAttributesNotFound) ToJSONString() string {
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

func (o *AdminGetPlayerAttributesNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlayerAttributesNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPlayerAttributesInternalServerError creates a AdminGetPlayerAttributesInternalServerError with default headers values
func NewAdminGetPlayerAttributesInternalServerError() *AdminGetPlayerAttributesInternalServerError {
	return &AdminGetPlayerAttributesInternalServerError{}
}

/*AdminGetPlayerAttributesInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetPlayerAttributesInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminGetPlayerAttributesInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/users/{userId}/attributes][%d] adminGetPlayerAttributesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetPlayerAttributesInternalServerError) ToJSONString() string {
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

func (o *AdminGetPlayerAttributesInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlayerAttributesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
