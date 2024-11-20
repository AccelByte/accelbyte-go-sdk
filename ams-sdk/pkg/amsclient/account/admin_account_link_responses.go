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

// AdminAccountLinkReader is a Reader for the AdminAccountLink structure.
type AdminAccountLinkReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminAccountLinkReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminAccountLinkCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminAccountLinkUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminAccountLinkForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminAccountLinkInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ams/v1/admin/namespaces/{namespace}/account/link returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminAccountLinkCreated creates a AdminAccountLinkCreated with default headers values
func NewAdminAccountLinkCreated() *AdminAccountLinkCreated {
	return &AdminAccountLinkCreated{}
}

/*AdminAccountLinkCreated handles this case with default header values.

  success
*/
type AdminAccountLinkCreated struct {
	Payload *amsclientmodels.APIAccountLinkResponse
}

func (o *AdminAccountLinkCreated) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/account/link][%d] adminAccountLinkCreated  %+v", 201, o.ToJSONString())
}

func (o *AdminAccountLinkCreated) ToJSONString() string {
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

func (o *AdminAccountLinkCreated) GetPayload() *amsclientmodels.APIAccountLinkResponse {
	return o.Payload
}

func (o *AdminAccountLinkCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIAccountLinkResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminAccountLinkUnauthorized creates a AdminAccountLinkUnauthorized with default headers values
func NewAdminAccountLinkUnauthorized() *AdminAccountLinkUnauthorized {
	return &AdminAccountLinkUnauthorized{}
}

/*AdminAccountLinkUnauthorized handles this case with default header values.

  no authorization provided
*/
type AdminAccountLinkUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AdminAccountLinkUnauthorized) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/account/link][%d] adminAccountLinkUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminAccountLinkUnauthorized) ToJSONString() string {
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

func (o *AdminAccountLinkUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminAccountLinkUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAccountLinkForbidden creates a AdminAccountLinkForbidden with default headers values
func NewAdminAccountLinkForbidden() *AdminAccountLinkForbidden {
	return &AdminAccountLinkForbidden{}
}

/*AdminAccountLinkForbidden handles this case with default header values.

  insufficient permissions
*/
type AdminAccountLinkForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AdminAccountLinkForbidden) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/account/link][%d] adminAccountLinkForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminAccountLinkForbidden) ToJSONString() string {
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

func (o *AdminAccountLinkForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminAccountLinkForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAccountLinkInternalServerError creates a AdminAccountLinkInternalServerError with default headers values
func NewAdminAccountLinkInternalServerError() *AdminAccountLinkInternalServerError {
	return &AdminAccountLinkInternalServerError{}
}

/*AdminAccountLinkInternalServerError handles this case with default header values.

  internal server error
*/
type AdminAccountLinkInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AdminAccountLinkInternalServerError) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/account/link][%d] adminAccountLinkInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminAccountLinkInternalServerError) ToJSONString() string {
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

func (o *AdminAccountLinkInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminAccountLinkInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
