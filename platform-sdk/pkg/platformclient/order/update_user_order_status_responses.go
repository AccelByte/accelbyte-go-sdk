// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package order

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// UpdateUserOrderStatusReader is a Reader for the UpdateUserOrderStatus structure.
type UpdateUserOrderStatusReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateUserOrderStatusReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateUserOrderStatusOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateUserOrderStatusNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateUserOrderStatusConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUpdateUserOrderStatusUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateUserOrderStatusOK creates a UpdateUserOrderStatusOK with default headers values
func NewUpdateUserOrderStatusOK() *UpdateUserOrderStatusOK {
	return &UpdateUserOrderStatusOK{}
}

/*UpdateUserOrderStatusOK handles this case with default header values.

  successful operation
*/
type UpdateUserOrderStatusOK struct {
	Payload *platformclientmodels.OrderInfo
}

func (o *UpdateUserOrderStatusOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}][%d] updateUserOrderStatusOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateUserOrderStatusOK) ToJSONString() string {
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

func (o *UpdateUserOrderStatusOK) GetPayload() *platformclientmodels.OrderInfo {
	return o.Payload
}

func (o *UpdateUserOrderStatusOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.OrderInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateUserOrderStatusNotFound creates a UpdateUserOrderStatusNotFound with default headers values
func NewUpdateUserOrderStatusNotFound() *UpdateUserOrderStatusNotFound {
	return &UpdateUserOrderStatusNotFound{}
}

/*UpdateUserOrderStatusNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>32141</td><td>Order [{orderNo}] does not exist</td></tr></table>
*/
type UpdateUserOrderStatusNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateUserOrderStatusNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}][%d] updateUserOrderStatusNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateUserOrderStatusNotFound) ToJSONString() string {
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

func (o *UpdateUserOrderStatusNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateUserOrderStatusNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateUserOrderStatusConflict creates a UpdateUserOrderStatusConflict with default headers values
func NewUpdateUserOrderStatusConflict() *UpdateUserOrderStatusConflict {
	return &UpdateUserOrderStatusConflict{}
}

/*UpdateUserOrderStatusConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20006</td><td>optimistic lock</td></tr></table>
*/
type UpdateUserOrderStatusConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateUserOrderStatusConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}][%d] updateUserOrderStatusConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateUserOrderStatusConflict) ToJSONString() string {
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

func (o *UpdateUserOrderStatusConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateUserOrderStatusConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateUserOrderStatusUnprocessableEntity creates a UpdateUserOrderStatusUnprocessableEntity with default headers values
func NewUpdateUserOrderStatusUnprocessableEntity() *UpdateUserOrderStatusUnprocessableEntity {
	return &UpdateUserOrderStatusUnprocessableEntity{}
}

/*UpdateUserOrderStatusUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateUserOrderStatusUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *UpdateUserOrderStatusUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}][%d] updateUserOrderStatusUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UpdateUserOrderStatusUnprocessableEntity) ToJSONString() string {
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

func (o *UpdateUserOrderStatusUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateUserOrderStatusUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
