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

// RevokeEntitlementsReader is a Reader for the RevokeEntitlements structure.
type RevokeEntitlementsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RevokeEntitlementsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRevokeEntitlementsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewRevokeEntitlementsUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/entitlements/revoke returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRevokeEntitlementsOK creates a RevokeEntitlementsOK with default headers values
func NewRevokeEntitlementsOK() *RevokeEntitlementsOK {
	return &RevokeEntitlementsOK{}
}

/*RevokeEntitlementsOK handles this case with default header values.

  successful operation
*/
type RevokeEntitlementsOK struct {
	Payload *platformclientmodels.BulkEntitlementRevokeResult
}

func (o *RevokeEntitlementsOK) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/entitlements/revoke][%d] revokeEntitlementsOK  %+v", 200, o.ToJSONString())
}

func (o *RevokeEntitlementsOK) ToJSONString() string {
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

func (o *RevokeEntitlementsOK) GetPayload() *platformclientmodels.BulkEntitlementRevokeResult {
	return o.Payload
}

func (o *RevokeEntitlementsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.BulkEntitlementRevokeResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRevokeEntitlementsUnprocessableEntity creates a RevokeEntitlementsUnprocessableEntity with default headers values
func NewRevokeEntitlementsUnprocessableEntity() *RevokeEntitlementsUnprocessableEntity {
	return &RevokeEntitlementsUnprocessableEntity{}
}

/*RevokeEntitlementsUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type RevokeEntitlementsUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *RevokeEntitlementsUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/entitlements/revoke][%d] revokeEntitlementsUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *RevokeEntitlementsUnprocessableEntity) ToJSONString() string {
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

func (o *RevokeEntitlementsUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *RevokeEntitlementsUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
