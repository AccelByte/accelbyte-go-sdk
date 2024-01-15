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

// AdminAccountLinkTokenGetReader is a Reader for the AdminAccountLinkTokenGet structure.
type AdminAccountLinkTokenGetReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminAccountLinkTokenGetReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminAccountLinkTokenGetOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminAccountLinkTokenGetUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminAccountLinkTokenGetForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminAccountLinkTokenGetNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminAccountLinkTokenGetInternalServerError()
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

// NewAdminAccountLinkTokenGetOK creates a AdminAccountLinkTokenGetOK with default headers values
func NewAdminAccountLinkTokenGetOK() *AdminAccountLinkTokenGetOK {
	return &AdminAccountLinkTokenGetOK{}
}

/*AdminAccountLinkTokenGetOK handles this case with default header values.

  success
*/
type AdminAccountLinkTokenGetOK struct {
	Payload *amsclientmodels.APIAccountLinkTokenResponse
}

func (o *AdminAccountLinkTokenGetOK) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/account/link][%d] adminAccountLinkTokenGetOK  %+v", 200, o.ToJSONString())
}

func (o *AdminAccountLinkTokenGetOK) ToJSONString() string {
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

func (o *AdminAccountLinkTokenGetOK) GetPayload() *amsclientmodels.APIAccountLinkTokenResponse {
	return o.Payload
}

func (o *AdminAccountLinkTokenGetOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminAccountLinkTokenGetUnauthorized creates a AdminAccountLinkTokenGetUnauthorized with default headers values
func NewAdminAccountLinkTokenGetUnauthorized() *AdminAccountLinkTokenGetUnauthorized {
	return &AdminAccountLinkTokenGetUnauthorized{}
}

/*AdminAccountLinkTokenGetUnauthorized handles this case with default header values.

  no authorization provided
*/
type AdminAccountLinkTokenGetUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AdminAccountLinkTokenGetUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/account/link][%d] adminAccountLinkTokenGetUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminAccountLinkTokenGetUnauthorized) ToJSONString() string {
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

func (o *AdminAccountLinkTokenGetUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminAccountLinkTokenGetUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminAccountLinkTokenGetForbidden creates a AdminAccountLinkTokenGetForbidden with default headers values
func NewAdminAccountLinkTokenGetForbidden() *AdminAccountLinkTokenGetForbidden {
	return &AdminAccountLinkTokenGetForbidden{}
}

/*AdminAccountLinkTokenGetForbidden handles this case with default header values.

  insufficient permissions
*/
type AdminAccountLinkTokenGetForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AdminAccountLinkTokenGetForbidden) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/account/link][%d] adminAccountLinkTokenGetForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminAccountLinkTokenGetForbidden) ToJSONString() string {
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

func (o *AdminAccountLinkTokenGetForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminAccountLinkTokenGetForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminAccountLinkTokenGetNotFound creates a AdminAccountLinkTokenGetNotFound with default headers values
func NewAdminAccountLinkTokenGetNotFound() *AdminAccountLinkTokenGetNotFound {
	return &AdminAccountLinkTokenGetNotFound{}
}

/*AdminAccountLinkTokenGetNotFound handles this case with default header values.

  account not linked
*/
type AdminAccountLinkTokenGetNotFound struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AdminAccountLinkTokenGetNotFound) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/account/link][%d] adminAccountLinkTokenGetNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminAccountLinkTokenGetNotFound) ToJSONString() string {
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

func (o *AdminAccountLinkTokenGetNotFound) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminAccountLinkTokenGetNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminAccountLinkTokenGetInternalServerError creates a AdminAccountLinkTokenGetInternalServerError with default headers values
func NewAdminAccountLinkTokenGetInternalServerError() *AdminAccountLinkTokenGetInternalServerError {
	return &AdminAccountLinkTokenGetInternalServerError{}
}

/*AdminAccountLinkTokenGetInternalServerError handles this case with default header values.

  internal server error
*/
type AdminAccountLinkTokenGetInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AdminAccountLinkTokenGetInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ams/v1/admin/namespaces/{namespace}/account/link][%d] adminAccountLinkTokenGetInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminAccountLinkTokenGetInternalServerError) ToJSONString() string {
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

func (o *AdminAccountLinkTokenGetInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminAccountLinkTokenGetInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
