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

// AccountLinkTokenGetReader is a Reader for the AccountLinkTokenGet structure.
type AccountLinkTokenGetReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AccountLinkTokenGetReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAccountLinkTokenGetOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAccountLinkTokenGetUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAccountLinkTokenGetForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAccountLinkTokenGetNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAccountLinkTokenGetInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ams/v1/admin/namespaces/{namespace}/account/link returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAccountLinkTokenGetOK creates a AccountLinkTokenGetOK with default headers values
func NewAccountLinkTokenGetOK() *AccountLinkTokenGetOK {
	return &AccountLinkTokenGetOK{}
}

/*AccountLinkTokenGetOK handles this case with default header values.

  success
*/
type AccountLinkTokenGetOK struct {
	Payload *amsclientmodels.APIAccountLinkTokenResponse
}

func (o *AccountLinkTokenGetOK) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/account/link][%d] accountLinkTokenGetOK  %+v", 200, o.ToJSONString())
}

func (o *AccountLinkTokenGetOK) ToJSONString() string {
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

func (o *AccountLinkTokenGetOK) GetPayload() *amsclientmodels.APIAccountLinkTokenResponse {
	return o.Payload
}

func (o *AccountLinkTokenGetOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIAccountLinkTokenResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAccountLinkTokenGetUnauthorized creates a AccountLinkTokenGetUnauthorized with default headers values
func NewAccountLinkTokenGetUnauthorized() *AccountLinkTokenGetUnauthorized {
	return &AccountLinkTokenGetUnauthorized{}
}

/*AccountLinkTokenGetUnauthorized handles this case with default header values.

  no authorization provided
*/
type AccountLinkTokenGetUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AccountLinkTokenGetUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/account/link][%d] accountLinkTokenGetUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AccountLinkTokenGetUnauthorized) ToJSONString() string {
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

func (o *AccountLinkTokenGetUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AccountLinkTokenGetUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAccountLinkTokenGetForbidden creates a AccountLinkTokenGetForbidden with default headers values
func NewAccountLinkTokenGetForbidden() *AccountLinkTokenGetForbidden {
	return &AccountLinkTokenGetForbidden{}
}

/*AccountLinkTokenGetForbidden handles this case with default header values.

  insufficient permissions
*/
type AccountLinkTokenGetForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AccountLinkTokenGetForbidden) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/account/link][%d] accountLinkTokenGetForbidden  %+v", 403, o.ToJSONString())
}

func (o *AccountLinkTokenGetForbidden) ToJSONString() string {
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

func (o *AccountLinkTokenGetForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AccountLinkTokenGetForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAccountLinkTokenGetNotFound creates a AccountLinkTokenGetNotFound with default headers values
func NewAccountLinkTokenGetNotFound() *AccountLinkTokenGetNotFound {
	return &AccountLinkTokenGetNotFound{}
}

/*AccountLinkTokenGetNotFound handles this case with default header values.

  account not linked
*/
type AccountLinkTokenGetNotFound struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AccountLinkTokenGetNotFound) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/account/link][%d] accountLinkTokenGetNotFound  %+v", 404, o.ToJSONString())
}

func (o *AccountLinkTokenGetNotFound) ToJSONString() string {
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

func (o *AccountLinkTokenGetNotFound) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AccountLinkTokenGetNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAccountLinkTokenGetInternalServerError creates a AccountLinkTokenGetInternalServerError with default headers values
func NewAccountLinkTokenGetInternalServerError() *AccountLinkTokenGetInternalServerError {
	return &AccountLinkTokenGetInternalServerError{}
}

/*AccountLinkTokenGetInternalServerError handles this case with default header values.

  internal server error
*/
type AccountLinkTokenGetInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AccountLinkTokenGetInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/account/link][%d] accountLinkTokenGetInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AccountLinkTokenGetInternalServerError) ToJSONString() string {
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

func (o *AccountLinkTokenGetInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AccountLinkTokenGetInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
