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

// AdminResetInputValidationsReader is a Reader for the AdminResetInputValidations structure.
type AdminResetInputValidationsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminResetInputValidationsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminResetInputValidationsNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminResetInputValidationsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminResetInputValidationsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminResetInputValidationsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/v3/admin/inputValidations/{field} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminResetInputValidationsNoContent creates a AdminResetInputValidationsNoContent with default headers values
func NewAdminResetInputValidationsNoContent() *AdminResetInputValidationsNoContent {
	return &AdminResetInputValidationsNoContent{}
}

/*AdminResetInputValidationsNoContent handles this case with default header values.

  No Content
*/
type AdminResetInputValidationsNoContent struct {
}

func (o *AdminResetInputValidationsNoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/inputValidations/{field}][%d] adminResetInputValidationsNoContent ", 204)
}

func (o *AdminResetInputValidationsNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminResetInputValidationsUnauthorized creates a AdminResetInputValidationsUnauthorized with default headers values
func NewAdminResetInputValidationsUnauthorized() *AdminResetInputValidationsUnauthorized {
	return &AdminResetInputValidationsUnauthorized{}
}

/*AdminResetInputValidationsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminResetInputValidationsUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminResetInputValidationsUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/inputValidations/{field}][%d] adminResetInputValidationsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminResetInputValidationsUnauthorized) ToJSONString() string {
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

func (o *AdminResetInputValidationsUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminResetInputValidationsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminResetInputValidationsForbidden creates a AdminResetInputValidationsForbidden with default headers values
func NewAdminResetInputValidationsForbidden() *AdminResetInputValidationsForbidden {
	return &AdminResetInputValidationsForbidden{}
}

/*AdminResetInputValidationsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminResetInputValidationsForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminResetInputValidationsForbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/inputValidations/{field}][%d] adminResetInputValidationsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminResetInputValidationsForbidden) ToJSONString() string {
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

func (o *AdminResetInputValidationsForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminResetInputValidationsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminResetInputValidationsNotFound creates a AdminResetInputValidationsNotFound with default headers values
func NewAdminResetInputValidationsNotFound() *AdminResetInputValidationsNotFound {
	return &AdminResetInputValidationsNotFound{}
}

/*AdminResetInputValidationsNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10188</td><td>input validation field not found</td></tr></table>
*/
type AdminResetInputValidationsNotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminResetInputValidationsNotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/v3/admin/inputValidations/{field}][%d] adminResetInputValidationsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminResetInputValidationsNotFound) ToJSONString() string {
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

func (o *AdminResetInputValidationsNotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminResetInputValidationsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
