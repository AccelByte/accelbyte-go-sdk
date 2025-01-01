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

// RevokeItemsV3Reader is a Reader for the RevokeItemsV3 structure.
type RevokeItemsV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RevokeItemsV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRevokeItemsV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRevokeItemsV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/revoke returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRevokeItemsV3OK creates a RevokeItemsV3OK with default headers values
func NewRevokeItemsV3OK() *RevokeItemsV3OK {
	return &RevokeItemsV3OK{}
}

/*RevokeItemsV3OK handles this case with default header values.

  successful operation
*/
type RevokeItemsV3OK struct {
	Payload *platformclientmodels.RevokeFulfillmentV2Result
}

func (o *RevokeItemsV3OK) Error() string {
	return fmt.Sprintf("[PUT /platform/v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/revoke][%d] revokeItemsV3OK  %+v", 200, o.ToJSONString())
}

func (o *RevokeItemsV3OK) ToJSONString() string {
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

func (o *RevokeItemsV3OK) GetPayload() *platformclientmodels.RevokeFulfillmentV2Result {
	return o.Payload
}

func (o *RevokeItemsV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRevokeItemsV3NotFound creates a RevokeItemsV3NotFound with default headers values
func NewRevokeItemsV3NotFound() *RevokeItemsV3NotFound {
	return &RevokeItemsV3NotFound{}
}

/*RevokeItemsV3NotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>38145</td><td>Fulfillment with transactionId [{transactionId}] does not exist</td></tr></table>
*/
type RevokeItemsV3NotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *RevokeItemsV3NotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/v3/admin/namespaces/{namespace}/users/{userId}/fulfillments/{transactionId}/revoke][%d] revokeItemsV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *RevokeItemsV3NotFound) ToJSONString() string {
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

func (o *RevokeItemsV3NotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RevokeItemsV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
