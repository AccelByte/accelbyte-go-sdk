// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package auth

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
)

// AuthCheckReader is a Reader for the AuthCheck structure.
type AuthCheckReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AuthCheckReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAuthCheckOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAuthCheckUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAuthCheckForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAuthCheckInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ams/auth returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAuthCheckOK creates a AuthCheckOK with default headers values
func NewAuthCheckOK() *AuthCheckOK {
	return &AuthCheckOK{}
}

/*AuthCheckOK handles this case with default header values.

  success
*/
type AuthCheckOK struct {
}

func (o *AuthCheckOK) Error() string {
	return fmt.Sprintf("[GET /ams/auth][%d] authCheckOK ", 200)
}

func (o *AuthCheckOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAuthCheckUnauthorized creates a AuthCheckUnauthorized with default headers values
func NewAuthCheckUnauthorized() *AuthCheckUnauthorized {
	return &AuthCheckUnauthorized{}
}

/*AuthCheckUnauthorized handles this case with default header values.

  unauthorized
*/
type AuthCheckUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AuthCheckUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ams/auth][%d] authCheckUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AuthCheckUnauthorized) ToJSONString() string {
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

func (o *AuthCheckUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AuthCheckUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAuthCheckForbidden creates a AuthCheckForbidden with default headers values
func NewAuthCheckForbidden() *AuthCheckForbidden {
	return &AuthCheckForbidden{}
}

/*AuthCheckForbidden handles this case with default header values.

  forbidden
*/
type AuthCheckForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AuthCheckForbidden) Error() string {
	return fmt.Sprintf("[GET /ams/auth][%d] authCheckForbidden  %+v", 403, o.ToJSONString())
}

func (o *AuthCheckForbidden) ToJSONString() string {
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

func (o *AuthCheckForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AuthCheckForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAuthCheckInternalServerError creates a AuthCheckInternalServerError with default headers values
func NewAuthCheckInternalServerError() *AuthCheckInternalServerError {
	return &AuthCheckInternalServerError{}
}

/*AuthCheckInternalServerError handles this case with default header values.

  internal server error
*/
type AuthCheckInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AuthCheckInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ams/auth][%d] authCheckInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AuthCheckInternalServerError) ToJSONString() string {
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

func (o *AuthCheckInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AuthCheckInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
