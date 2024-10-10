// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

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

// MockFulfillIAPItemReader is a Reader for the MockFulfillIAPItem structure.
type MockFulfillIAPItemReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *MockFulfillIAPItemReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewMockFulfillIAPItemNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewMockFulfillIAPItemBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewMockFulfillIAPItemNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewMockFulfillIAPItemConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/mock/receipt returns an error %d: %s", response.Code(), string(data))
	}
}

// NewMockFulfillIAPItemNoContent creates a MockFulfillIAPItemNoContent with default headers values
func NewMockFulfillIAPItemNoContent() *MockFulfillIAPItemNoContent {
	return &MockFulfillIAPItemNoContent{}
}

/*MockFulfillIAPItemNoContent handles this case with default header values.

  Fulfill item successfully
*/
type MockFulfillIAPItemNoContent struct {
}

func (o *MockFulfillIAPItemNoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/mock/receipt][%d] mockFulfillIapItemNoContent ", 204)
}

func (o *MockFulfillIAPItemNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewMockFulfillIAPItemBadRequest creates a MockFulfillIAPItemBadRequest with default headers values
func NewMockFulfillIAPItemBadRequest() *MockFulfillIAPItemBadRequest {
	return &MockFulfillIAPItemBadRequest{}
}

/*MockFulfillIAPItemBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>35123</td><td>Wallet [{walletId}] is inactive</td></tr><tr><td>38121</td><td>Duplicate permanent item exists</td></tr><tr><td>38122</td><td>Subscription endDate required</td></tr></table>
*/
type MockFulfillIAPItemBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *MockFulfillIAPItemBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/mock/receipt][%d] mockFulfillIapItemBadRequest  %+v", 400, o.ToJSONString())
}

func (o *MockFulfillIAPItemBadRequest) ToJSONString() string {
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

func (o *MockFulfillIAPItemBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *MockFulfillIAPItemBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewMockFulfillIAPItemNotFound creates a MockFulfillIAPItemNotFound with default headers values
func NewMockFulfillIAPItemNotFound() *MockFulfillIAPItemNotFound {
	return &MockFulfillIAPItemNotFound{}
}

/*MockFulfillIAPItemNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>30341</td><td>Item [{itemId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type MockFulfillIAPItemNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *MockFulfillIAPItemNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/mock/receipt][%d] mockFulfillIapItemNotFound  %+v", 404, o.ToJSONString())
}

func (o *MockFulfillIAPItemNotFound) ToJSONString() string {
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

func (o *MockFulfillIAPItemNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *MockFulfillIAPItemNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewMockFulfillIAPItemConflict creates a MockFulfillIAPItemConflict with default headers values
func NewMockFulfillIAPItemConflict() *MockFulfillIAPItemConflict {
	return &MockFulfillIAPItemConflict{}
}

/*MockFulfillIAPItemConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20006</td><td>optimistic lock</td></tr></table>
*/
type MockFulfillIAPItemConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *MockFulfillIAPItemConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/users/{userId}/iap/mock/receipt][%d] mockFulfillIapItemConflict  %+v", 409, o.ToJSONString())
}

func (o *MockFulfillIAPItemConflict) ToJSONString() string {
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

func (o *MockFulfillIAPItemConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *MockFulfillIAPItemConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
