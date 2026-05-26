// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package input_validations

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// AdminUpdateNamespaceScopedInputValidationsReader is a Reader for the AdminUpdateNamespaceScopedInputValidations structure.
type AdminUpdateNamespaceScopedInputValidationsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateNamespaceScopedInputValidationsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminUpdateNamespaceScopedInputValidationsNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateNamespaceScopedInputValidationsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateNamespaceScopedInputValidationsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateNamespaceScopedInputValidationsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /iam/v3/admin/namespaces/{namespace}/inputValidations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateNamespaceScopedInputValidationsNoContent creates a AdminUpdateNamespaceScopedInputValidationsNoContent with default headers values
func NewAdminUpdateNamespaceScopedInputValidationsNoContent() *AdminUpdateNamespaceScopedInputValidationsNoContent {
	return &AdminUpdateNamespaceScopedInputValidationsNoContent{}
}

/*AdminUpdateNamespaceScopedInputValidationsNoContent handles this case with default header values.

  No Content
*/
type AdminUpdateNamespaceScopedInputValidationsNoContent struct {
}

func (o *AdminUpdateNamespaceScopedInputValidationsNoContent) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/inputValidations][%d] adminUpdateNamespaceScopedInputValidationsNoContent ", 204)
}

func (o *AdminUpdateNamespaceScopedInputValidationsNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUpdateNamespaceScopedInputValidationsUnauthorized creates a AdminUpdateNamespaceScopedInputValidationsUnauthorized with default headers values
func NewAdminUpdateNamespaceScopedInputValidationsUnauthorized() *AdminUpdateNamespaceScopedInputValidationsUnauthorized {
	return &AdminUpdateNamespaceScopedInputValidationsUnauthorized{}
}

/*AdminUpdateNamespaceScopedInputValidationsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpdateNamespaceScopedInputValidationsUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateNamespaceScopedInputValidationsUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/inputValidations][%d] adminUpdateNamespaceScopedInputValidationsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateNamespaceScopedInputValidationsUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateNamespaceScopedInputValidationsUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateNamespaceScopedInputValidationsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateNamespaceScopedInputValidationsForbidden creates a AdminUpdateNamespaceScopedInputValidationsForbidden with default headers values
func NewAdminUpdateNamespaceScopedInputValidationsForbidden() *AdminUpdateNamespaceScopedInputValidationsForbidden {
	return &AdminUpdateNamespaceScopedInputValidationsForbidden{}
}

/*AdminUpdateNamespaceScopedInputValidationsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminUpdateNamespaceScopedInputValidationsForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateNamespaceScopedInputValidationsForbidden) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/inputValidations][%d] adminUpdateNamespaceScopedInputValidationsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateNamespaceScopedInputValidationsForbidden) ToJSONString() string {
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

func (o *AdminUpdateNamespaceScopedInputValidationsForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateNamespaceScopedInputValidationsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateNamespaceScopedInputValidationsNotFound creates a AdminUpdateNamespaceScopedInputValidationsNotFound with default headers values
func NewAdminUpdateNamespaceScopedInputValidationsNotFound() *AdminUpdateNamespaceScopedInputValidationsNotFound {
	return &AdminUpdateNamespaceScopedInputValidationsNotFound{}
}

/*AdminUpdateNamespaceScopedInputValidationsNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10188</td><td>input validation field not found</td></tr></table>
*/
type AdminUpdateNamespaceScopedInputValidationsNotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateNamespaceScopedInputValidationsNotFound) Error() string {
	return fmt.Sprintf("[PUT /iam/v3/admin/namespaces/{namespace}/inputValidations][%d] adminUpdateNamespaceScopedInputValidationsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUpdateNamespaceScopedInputValidationsNotFound) ToJSONString() string {
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

func (o *AdminUpdateNamespaceScopedInputValidationsNotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateNamespaceScopedInputValidationsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
