// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package account

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

// AccountGetReader is a Reader for the AccountGet structure.
type AccountGetReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AccountGetReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAccountGetOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAccountGetUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAccountGetForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAccountGetNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAccountGetInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ams/v1/namespaces/{namespace}/account returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAccountGetOK creates a AccountGetOK with default headers values
func NewAccountGetOK() *AccountGetOK {
	return &AccountGetOK{}
}

/*AccountGetOK handles this case with default header values.

  success
*/
type AccountGetOK struct {
	Payload *amsclientmodels.APIAccountResponse
}

func (o *AccountGetOK) Error() string {
	return fmt.Sprintf("[GET /ams/v1/namespaces/{namespace}/account][%d] accountGetOK  %+v", 200, o.ToJSONString())
}

func (o *AccountGetOK) ToJSONString() string {
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

func (o *AccountGetOK) GetPayload() *amsclientmodels.APIAccountResponse {
	return o.Payload
}

func (o *AccountGetOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIAccountResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAccountGetUnauthorized creates a AccountGetUnauthorized with default headers values
func NewAccountGetUnauthorized() *AccountGetUnauthorized {
	return &AccountGetUnauthorized{}
}

/*AccountGetUnauthorized handles this case with default header values.

  no authorization provided
*/
type AccountGetUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AccountGetUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ams/v1/namespaces/{namespace}/account][%d] accountGetUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AccountGetUnauthorized) ToJSONString() string {
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

func (o *AccountGetUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AccountGetUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAccountGetForbidden creates a AccountGetForbidden with default headers values
func NewAccountGetForbidden() *AccountGetForbidden {
	return &AccountGetForbidden{}
}

/*AccountGetForbidden handles this case with default header values.

  insufficient permissions
*/
type AccountGetForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AccountGetForbidden) Error() string {
	return fmt.Sprintf("[GET /ams/v1/namespaces/{namespace}/account][%d] accountGetForbidden  %+v", 403, o.ToJSONString())
}

func (o *AccountGetForbidden) ToJSONString() string {
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

func (o *AccountGetForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AccountGetForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAccountGetNotFound creates a AccountGetNotFound with default headers values
func NewAccountGetNotFound() *AccountGetNotFound {
	return &AccountGetNotFound{}
}

/*AccountGetNotFound handles this case with default header values.

  account not linked
*/
type AccountGetNotFound struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AccountGetNotFound) Error() string {
	return fmt.Sprintf("[GET /ams/v1/namespaces/{namespace}/account][%d] accountGetNotFound  %+v", 404, o.ToJSONString())
}

func (o *AccountGetNotFound) ToJSONString() string {
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

func (o *AccountGetNotFound) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AccountGetNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAccountGetInternalServerError creates a AccountGetInternalServerError with default headers values
func NewAccountGetInternalServerError() *AccountGetInternalServerError {
	return &AccountGetInternalServerError{}
}

/*AccountGetInternalServerError handles this case with default header values.

  internal server error
*/
type AccountGetInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AccountGetInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ams/v1/namespaces/{namespace}/account][%d] accountGetInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AccountGetInternalServerError) ToJSONString() string {
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

func (o *AccountGetInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AccountGetInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
