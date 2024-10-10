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

// AdminAccountCreateReader is a Reader for the AdminAccountCreate structure.
type AdminAccountCreateReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminAccountCreateReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminAccountCreateCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminAccountCreateUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminAccountCreateForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminAccountCreateInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ams/v1/admin/namespaces/{namespace}/account returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminAccountCreateCreated creates a AdminAccountCreateCreated with default headers values
func NewAdminAccountCreateCreated() *AdminAccountCreateCreated {
	return &AdminAccountCreateCreated{}
}

/*AdminAccountCreateCreated handles this case with default header values.

  account Created
*/
type AdminAccountCreateCreated struct {
	Payload *amsclientmodels.APIAccountCreateResponse
}

func (o *AdminAccountCreateCreated) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/account][%d] adminAccountCreateCreated  %+v", 201, o.ToJSONString())
}

func (o *AdminAccountCreateCreated) ToJSONString() string {
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

func (o *AdminAccountCreateCreated) GetPayload() *amsclientmodels.APIAccountCreateResponse {
	return o.Payload
}

func (o *AdminAccountCreateCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIAccountCreateResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminAccountCreateUnauthorized creates a AdminAccountCreateUnauthorized with default headers values
func NewAdminAccountCreateUnauthorized() *AdminAccountCreateUnauthorized {
	return &AdminAccountCreateUnauthorized{}
}

/*AdminAccountCreateUnauthorized handles this case with default header values.

  no authorization provided
*/
type AdminAccountCreateUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AdminAccountCreateUnauthorized) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/account][%d] adminAccountCreateUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminAccountCreateUnauthorized) ToJSONString() string {
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

func (o *AdminAccountCreateUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminAccountCreateUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAccountCreateForbidden creates a AdminAccountCreateForbidden with default headers values
func NewAdminAccountCreateForbidden() *AdminAccountCreateForbidden {
	return &AdminAccountCreateForbidden{}
}

/*AdminAccountCreateForbidden handles this case with default header values.

  insufficient permissions
*/
type AdminAccountCreateForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AdminAccountCreateForbidden) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/account][%d] adminAccountCreateForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminAccountCreateForbidden) ToJSONString() string {
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

func (o *AdminAccountCreateForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminAccountCreateForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminAccountCreateInternalServerError creates a AdminAccountCreateInternalServerError with default headers values
func NewAdminAccountCreateInternalServerError() *AdminAccountCreateInternalServerError {
	return &AdminAccountCreateInternalServerError{}
}

/*AdminAccountCreateInternalServerError handles this case with default header values.

  internal server error
*/
type AdminAccountCreateInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *AdminAccountCreateInternalServerError) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/account][%d] adminAccountCreateInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminAccountCreateInternalServerError) ToJSONString() string {
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

func (o *AdminAccountCreateInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *AdminAccountCreateInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
