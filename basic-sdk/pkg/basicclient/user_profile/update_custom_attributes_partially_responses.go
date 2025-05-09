// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_profile

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

// UpdateCustomAttributesPartiallyReader is a Reader for the UpdateCustomAttributesPartially structure.
type UpdateCustomAttributesPartiallyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateCustomAttributesPartiallyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateCustomAttributesPartiallyOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateCustomAttributesPartiallyBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateCustomAttributesPartiallyUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateCustomAttributesPartiallyForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateCustomAttributesPartiallyNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateCustomAttributesPartiallyOK creates a UpdateCustomAttributesPartiallyOK with default headers values
func NewUpdateCustomAttributesPartiallyOK() *UpdateCustomAttributesPartiallyOK {
	return &UpdateCustomAttributesPartiallyOK{}
}

/*UpdateCustomAttributesPartiallyOK handles this case with default header values.

  successful operation
*/
type UpdateCustomAttributesPartiallyOK struct {
	Payload map[string]interface{}
}

func (o *UpdateCustomAttributesPartiallyOK) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes][%d] updateCustomAttributesPartiallyOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateCustomAttributesPartiallyOK) ToJSONString() string {
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

func (o *UpdateCustomAttributesPartiallyOK) GetPayload() map[string]interface{} {
	return o.Payload
}

func (o *UpdateCustomAttributesPartiallyOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateCustomAttributesPartiallyBadRequest creates a UpdateCustomAttributesPartiallyBadRequest with default headers values
func NewUpdateCustomAttributesPartiallyBadRequest() *UpdateCustomAttributesPartiallyBadRequest {
	return &UpdateCustomAttributesPartiallyBadRequest{}
}

/*UpdateCustomAttributesPartiallyBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type UpdateCustomAttributesPartiallyBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *UpdateCustomAttributesPartiallyBadRequest) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes][%d] updateCustomAttributesPartiallyBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateCustomAttributesPartiallyBadRequest) ToJSONString() string {
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

func (o *UpdateCustomAttributesPartiallyBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateCustomAttributesPartiallyBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateCustomAttributesPartiallyUnauthorized creates a UpdateCustomAttributesPartiallyUnauthorized with default headers values
func NewUpdateCustomAttributesPartiallyUnauthorized() *UpdateCustomAttributesPartiallyUnauthorized {
	return &UpdateCustomAttributesPartiallyUnauthorized{}
}

/*UpdateCustomAttributesPartiallyUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized</td></tr></table>
*/
type UpdateCustomAttributesPartiallyUnauthorized struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateCustomAttributesPartiallyUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes][%d] updateCustomAttributesPartiallyUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateCustomAttributesPartiallyUnauthorized) ToJSONString() string {
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

func (o *UpdateCustomAttributesPartiallyUnauthorized) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateCustomAttributesPartiallyUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateCustomAttributesPartiallyForbidden creates a UpdateCustomAttributesPartiallyForbidden with default headers values
func NewUpdateCustomAttributesPartiallyForbidden() *UpdateCustomAttributesPartiallyForbidden {
	return &UpdateCustomAttributesPartiallyForbidden{}
}

/*UpdateCustomAttributesPartiallyForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type UpdateCustomAttributesPartiallyForbidden struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateCustomAttributesPartiallyForbidden) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes][%d] updateCustomAttributesPartiallyForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateCustomAttributesPartiallyForbidden) ToJSONString() string {
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

func (o *UpdateCustomAttributesPartiallyForbidden) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateCustomAttributesPartiallyForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateCustomAttributesPartiallyNotFound creates a UpdateCustomAttributesPartiallyNotFound with default headers values
func NewUpdateCustomAttributesPartiallyNotFound() *UpdateCustomAttributesPartiallyNotFound {
	return &UpdateCustomAttributesPartiallyNotFound{}
}

/*UpdateCustomAttributesPartiallyNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>11440</td><td>Unable to {action}: User profile not found in namespace [{namespace}]</td></tr></table>
*/
type UpdateCustomAttributesPartiallyNotFound struct {
	Payload *basicclientmodels.ErrorEntity
}

func (o *UpdateCustomAttributesPartiallyNotFound) Error() string {
	return fmt.Sprintf("[PUT /basic/v1/admin/namespaces/{namespace}/users/{userId}/profiles/customAttributes][%d] updateCustomAttributesPartiallyNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateCustomAttributesPartiallyNotFound) ToJSONString() string {
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

func (o *UpdateCustomAttributesPartiallyNotFound) GetPayload() *basicclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateCustomAttributesPartiallyNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
