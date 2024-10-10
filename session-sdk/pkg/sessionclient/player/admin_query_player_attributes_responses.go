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

// AdminQueryPlayerAttributesReader is a Reader for the AdminQueryPlayerAttributes structure.
type AdminQueryPlayerAttributesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminQueryPlayerAttributesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminQueryPlayerAttributesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminQueryPlayerAttributesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminQueryPlayerAttributesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminQueryPlayerAttributesNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminQueryPlayerAttributesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/admin/namespaces/{namespace}/users/attributes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminQueryPlayerAttributesOK creates a AdminQueryPlayerAttributesOK with default headers values
func NewAdminQueryPlayerAttributesOK() *AdminQueryPlayerAttributesOK {
	return &AdminQueryPlayerAttributesOK{}
}

/*AdminQueryPlayerAttributesOK handles this case with default header values.

  OK
*/
type AdminQueryPlayerAttributesOK struct {
	Payload []*sessionclientmodels.ApimodelsPlayerAttributesResponseBody
}

func (o *AdminQueryPlayerAttributesOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/users/attributes][%d] adminQueryPlayerAttributesOK  %+v", 200, o.ToJSONString())
}

func (o *AdminQueryPlayerAttributesOK) ToJSONString() string {
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

func (o *AdminQueryPlayerAttributesOK) GetPayload() []*sessionclientmodels.ApimodelsPlayerAttributesResponseBody {
	return o.Payload
}

func (o *AdminQueryPlayerAttributesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminQueryPlayerAttributesBadRequest creates a AdminQueryPlayerAttributesBadRequest with default headers values
func NewAdminQueryPlayerAttributesBadRequest() *AdminQueryPlayerAttributesBadRequest {
	return &AdminQueryPlayerAttributesBadRequest{}
}

/*AdminQueryPlayerAttributesBadRequest handles this case with default header values.

  Bad Request
*/
type AdminQueryPlayerAttributesBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminQueryPlayerAttributesBadRequest) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/users/attributes][%d] adminQueryPlayerAttributesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminQueryPlayerAttributesBadRequest) ToJSONString() string {
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

func (o *AdminQueryPlayerAttributesBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryPlayerAttributesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryPlayerAttributesUnauthorized creates a AdminQueryPlayerAttributesUnauthorized with default headers values
func NewAdminQueryPlayerAttributesUnauthorized() *AdminQueryPlayerAttributesUnauthorized {
	return &AdminQueryPlayerAttributesUnauthorized{}
}

/*AdminQueryPlayerAttributesUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminQueryPlayerAttributesUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminQueryPlayerAttributesUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/users/attributes][%d] adminQueryPlayerAttributesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminQueryPlayerAttributesUnauthorized) ToJSONString() string {
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

func (o *AdminQueryPlayerAttributesUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryPlayerAttributesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryPlayerAttributesNotFound creates a AdminQueryPlayerAttributesNotFound with default headers values
func NewAdminQueryPlayerAttributesNotFound() *AdminQueryPlayerAttributesNotFound {
	return &AdminQueryPlayerAttributesNotFound{}
}

/*AdminQueryPlayerAttributesNotFound handles this case with default header values.

  Not Found
*/
type AdminQueryPlayerAttributesNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminQueryPlayerAttributesNotFound) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/users/attributes][%d] adminQueryPlayerAttributesNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminQueryPlayerAttributesNotFound) ToJSONString() string {
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

func (o *AdminQueryPlayerAttributesNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryPlayerAttributesNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminQueryPlayerAttributesInternalServerError creates a AdminQueryPlayerAttributesInternalServerError with default headers values
func NewAdminQueryPlayerAttributesInternalServerError() *AdminQueryPlayerAttributesInternalServerError {
	return &AdminQueryPlayerAttributesInternalServerError{}
}

/*AdminQueryPlayerAttributesInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminQueryPlayerAttributesInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminQueryPlayerAttributesInternalServerError) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/namespaces/{namespace}/users/attributes][%d] adminQueryPlayerAttributesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminQueryPlayerAttributesInternalServerError) ToJSONString() string {
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

func (o *AdminQueryPlayerAttributesInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryPlayerAttributesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
