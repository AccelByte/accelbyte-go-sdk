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

// AdminResetNamespaceScopedInputValidationsReader is a Reader for the AdminResetNamespaceScopedInputValidations structure.
type AdminResetNamespaceScopedInputValidationsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminResetNamespaceScopedInputValidationsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminResetNamespaceScopedInputValidationsNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminResetNamespaceScopedInputValidationsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminResetNamespaceScopedInputValidationsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminResetNamespaceScopedInputValidationsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v3/admin/namespaces/{namespace}/inputValidations/{field} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminResetNamespaceScopedInputValidationsNoContent creates a AdminResetNamespaceScopedInputValidationsNoContent with default headers values
func NewAdminResetNamespaceScopedInputValidationsNoContent() *AdminResetNamespaceScopedInputValidationsNoContent {
	return &AdminResetNamespaceScopedInputValidationsNoContent{}
}

/*AdminResetNamespaceScopedInputValidationsNoContent handles this case with default header values.

  No Content
*/
type AdminResetNamespaceScopedInputValidationsNoContent struct {
}

func (o *AdminResetNamespaceScopedInputValidationsNoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/inputValidations/{field}][%d] adminResetNamespaceScopedInputValidationsNoContent ", 204)
}

func (o *AdminResetNamespaceScopedInputValidationsNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminResetNamespaceScopedInputValidationsUnauthorized creates a AdminResetNamespaceScopedInputValidationsUnauthorized with default headers values
func NewAdminResetNamespaceScopedInputValidationsUnauthorized() *AdminResetNamespaceScopedInputValidationsUnauthorized {
	return &AdminResetNamespaceScopedInputValidationsUnauthorized{}
}

/*AdminResetNamespaceScopedInputValidationsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminResetNamespaceScopedInputValidationsUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminResetNamespaceScopedInputValidationsUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/inputValidations/{field}][%d] adminResetNamespaceScopedInputValidationsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminResetNamespaceScopedInputValidationsUnauthorized) ToJSONString() string {
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

func (o *AdminResetNamespaceScopedInputValidationsUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminResetNamespaceScopedInputValidationsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminResetNamespaceScopedInputValidationsForbidden creates a AdminResetNamespaceScopedInputValidationsForbidden with default headers values
func NewAdminResetNamespaceScopedInputValidationsForbidden() *AdminResetNamespaceScopedInputValidationsForbidden {
	return &AdminResetNamespaceScopedInputValidationsForbidden{}
}

/*AdminResetNamespaceScopedInputValidationsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminResetNamespaceScopedInputValidationsForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminResetNamespaceScopedInputValidationsForbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/inputValidations/{field}][%d] adminResetNamespaceScopedInputValidationsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminResetNamespaceScopedInputValidationsForbidden) ToJSONString() string {
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

func (o *AdminResetNamespaceScopedInputValidationsForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminResetNamespaceScopedInputValidationsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminResetNamespaceScopedInputValidationsNotFound creates a AdminResetNamespaceScopedInputValidationsNotFound with default headers values
func NewAdminResetNamespaceScopedInputValidationsNotFound() *AdminResetNamespaceScopedInputValidationsNotFound {
	return &AdminResetNamespaceScopedInputValidationsNotFound{}
}

/*AdminResetNamespaceScopedInputValidationsNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10188</td><td>input validation field not found</td></tr></table>
*/
type AdminResetNamespaceScopedInputValidationsNotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminResetNamespaceScopedInputValidationsNotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/namespaces/{namespace}/inputValidations/{field}][%d] adminResetNamespaceScopedInputValidationsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminResetNamespaceScopedInputValidationsNotFound) ToJSONString() string {
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

func (o *AdminResetNamespaceScopedInputValidationsNotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminResetNamespaceScopedInputValidationsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
