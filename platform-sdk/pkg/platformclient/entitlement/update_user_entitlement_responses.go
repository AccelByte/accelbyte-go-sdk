// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package entitlement

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

// UpdateUserEntitlementReader is a Reader for the UpdateUserEntitlement structure.
type UpdateUserEntitlementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateUserEntitlementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateUserEntitlementOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateUserEntitlementNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateUserEntitlementConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUpdateUserEntitlementUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateUserEntitlementOK creates a UpdateUserEntitlementOK with default headers values
func NewUpdateUserEntitlementOK() *UpdateUserEntitlementOK {
	return &UpdateUserEntitlementOK{}
}

/*UpdateUserEntitlementOK handles this case with default header values.

  successful operation
*/
type UpdateUserEntitlementOK struct {
	Payload *platformclientmodels.EntitlementInfo
}

func (o *UpdateUserEntitlementOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}][%d] updateUserEntitlementOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateUserEntitlementOK) ToJSONString() string {
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

func (o *UpdateUserEntitlementOK) GetPayload() *platformclientmodels.EntitlementInfo {
	return o.Payload
}

func (o *UpdateUserEntitlementOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.EntitlementInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateUserEntitlementNotFound creates a UpdateUserEntitlementNotFound with default headers values
func NewUpdateUserEntitlementNotFound() *UpdateUserEntitlementNotFound {
	return &UpdateUserEntitlementNotFound{}
}

/*UpdateUserEntitlementNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31141</td><td>Entitlement [{entitlementId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type UpdateUserEntitlementNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateUserEntitlementNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}][%d] updateUserEntitlementNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateUserEntitlementNotFound) ToJSONString() string {
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

func (o *UpdateUserEntitlementNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateUserEntitlementNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateUserEntitlementConflict creates a UpdateUserEntitlementConflict with default headers values
func NewUpdateUserEntitlementConflict() *UpdateUserEntitlementConflict {
	return &UpdateUserEntitlementConflict{}
}

/*UpdateUserEntitlementConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>31171</td><td>Entitlement [{entitlementId}] already revoked</td></tr><tr><td>20006</td><td>optimistic lock</td></tr></table>
*/
type UpdateUserEntitlementConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateUserEntitlementConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}][%d] updateUserEntitlementConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateUserEntitlementConflict) ToJSONString() string {
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

func (o *UpdateUserEntitlementConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateUserEntitlementConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateUserEntitlementUnprocessableEntity creates a UpdateUserEntitlementUnprocessableEntity with default headers values
func NewUpdateUserEntitlementUnprocessableEntity() *UpdateUserEntitlementUnprocessableEntity {
	return &UpdateUserEntitlementUnprocessableEntity{}
}

/*UpdateUserEntitlementUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateUserEntitlementUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *UpdateUserEntitlementUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/entitlements/{entitlementId}][%d] updateUserEntitlementUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UpdateUserEntitlementUnprocessableEntity) ToJSONString() string {
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

func (o *UpdateUserEntitlementUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateUserEntitlementUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
