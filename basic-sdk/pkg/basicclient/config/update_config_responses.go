// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package config

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
)

// UpdateConfigReader is a Reader for the UpdateConfig structure.
type UpdateConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateConfigBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateConfigNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /basic/v1/admin/namespaces/{namespace}/configs/{configKey} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateConfigOK creates a UpdateConfigOK with default headers values
func NewUpdateConfigOK() *UpdateConfigOK {
	return &UpdateConfigOK{}
}

/*UpdateConfigOK handles this case with default header values.

  Successful operation
*/
type UpdateConfigOK struct {
	Payload *basicclientmodels.ConfigInfo
}

func (o *UpdateConfigOK) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/configs/{configKey}][%d] updateConfigOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateConfigOK) ToJSONString() string {
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

func (o *UpdateConfigOK) GetPayload() *basicclientmodels.ConfigInfo {
	return o.Payload
}

func (o *UpdateConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateConfigBadRequest creates a UpdateConfigBadRequest with default headers values
func NewUpdateConfigBadRequest() *UpdateConfigBadRequest {
	return &UpdateConfigBadRequest{}
}

/*UpdateConfigBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type UpdateConfigBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *UpdateConfigBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/configs/{configKey}][%d] updateConfigBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateConfigBadRequest) ToJSONString() string {
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

func (o *UpdateConfigBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateConfigBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateConfigUnauthorized creates a UpdateConfigUnauthorized with default headers values
func NewUpdateConfigUnauthorized() *UpdateConfigUnauthorized {
	return &UpdateConfigUnauthorized{}
}

/*UpdateConfigUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type UpdateConfigUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateConfigUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/configs/{configKey}][%d] updateConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateConfigUnauthorized) ToJSONString() string {
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

func (o *UpdateConfigUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateConfigForbidden creates a UpdateConfigForbidden with default headers values
func NewUpdateConfigForbidden() *UpdateConfigForbidden {
	return &UpdateConfigForbidden{}
}

/*UpdateConfigForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type UpdateConfigForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateConfigForbidden) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/configs/{configKey}][%d] updateConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateConfigForbidden) ToJSONString() string {
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

func (o *UpdateConfigForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateConfigNotFound creates a UpdateConfigNotFound with default headers values
func NewUpdateConfigNotFound() *UpdateConfigNotFound {
	return &UpdateConfigNotFound{}
}

/*UpdateConfigNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11741</td><td>Unable to {action}: Config not found</td></tr></table>
*/
type UpdateConfigNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateConfigNotFound) Error() string {
	return fmt.Sprintf("[PATCH /basic/v1/admin/namespaces/{namespace}/configs/{configKey}][%d] updateConfigNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateConfigNotFound) ToJSONString() string {
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

func (o *UpdateConfigNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateConfigNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
