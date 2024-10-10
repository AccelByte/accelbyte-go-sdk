// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fulfillment

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

// RevokeItemsReader is a Reader for the RevokeItems structure.
type RevokeItemsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RevokeItemsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRevokeItemsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRevokeItemsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewRevokeItemsConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/revoke returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRevokeItemsOK creates a RevokeItemsOK with default headers values
func NewRevokeItemsOK() *RevokeItemsOK {
	return &RevokeItemsOK{}
}

/*RevokeItemsOK handles this case with default header values.

  successful operation
*/
type RevokeItemsOK struct {
	Payload *platformclientmodels.RevokeFulfillmentV2Result
}

func (o *RevokeItemsOK) Error() string {
	return fmt.Sprintf("[PUT /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/revoke][%d] revokeItemsOK  %+v", 200, o.ToJSONString())
}

func (o *RevokeItemsOK) ToJSONString() string {
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

func (o *RevokeItemsOK) GetPayload() *platformclientmodels.RevokeFulfillmentV2Result {
	return o.Payload
}

func (o *RevokeItemsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.RevokeFulfillmentV2Result)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRevokeItemsNotFound creates a RevokeItemsNotFound with default headers values
func NewRevokeItemsNotFound() *RevokeItemsNotFound {
	return &RevokeItemsNotFound{}
}

/*RevokeItemsNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>38145</td><td>Fulfillment with transactionId [{transactionId}] does not exist</td></tr></table>
*/
type RevokeItemsNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *RevokeItemsNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/revoke][%d] revokeItemsNotFound  %+v", 404, o.ToJSONString())
}

func (o *RevokeItemsNotFound) ToJSONString() string {
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

func (o *RevokeItemsNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RevokeItemsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRevokeItemsConflict creates a RevokeItemsConflict with default headers values
func NewRevokeItemsConflict() *RevokeItemsConflict {
	return &RevokeItemsConflict{}
}

/*RevokeItemsConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr></table>
*/
type RevokeItemsConflict struct {
	Payload *platformclientmodels.RevokeFulfillmentV2Result
}

func (o *RevokeItemsConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/v2/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/revoke][%d] revokeItemsConflict  %+v", 409, o.ToJSONString())
}

func (o *RevokeItemsConflict) ToJSONString() string {
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

func (o *RevokeItemsConflict) GetPayload() *platformclientmodels.RevokeFulfillmentV2Result {
	return o.Payload
}

func (o *RevokeItemsConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.RevokeFulfillmentV2Result)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
