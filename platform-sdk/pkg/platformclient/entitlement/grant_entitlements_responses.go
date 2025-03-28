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

// GrantEntitlementsReader is a Reader for the GrantEntitlements structure.
type GrantEntitlementsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GrantEntitlementsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGrantEntitlementsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewGrantEntitlementsUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/entitlements/grant returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGrantEntitlementsOK creates a GrantEntitlementsOK with default headers values
func NewGrantEntitlementsOK() *GrantEntitlementsOK {
	return &GrantEntitlementsOK{}
}

/*GrantEntitlementsOK handles this case with default header values.

  successful operation
*/
type GrantEntitlementsOK struct {
	Payload *platformclientmodels.BulkEntitlementGrantResult
}

func (o *GrantEntitlementsOK) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/entitlements/grant][%d] grantEntitlementsOK  %+v", 200, o.ToJSONString())
}

func (o *GrantEntitlementsOK) ToJSONString() string {
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

func (o *GrantEntitlementsOK) GetPayload() *platformclientmodels.BulkEntitlementGrantResult {
	return o.Payload
}

func (o *GrantEntitlementsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.BulkEntitlementGrantResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGrantEntitlementsUnprocessableEntity creates a GrantEntitlementsUnprocessableEntity with default headers values
func NewGrantEntitlementsUnprocessableEntity() *GrantEntitlementsUnprocessableEntity {
	return &GrantEntitlementsUnprocessableEntity{}
}

/*GrantEntitlementsUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GrantEntitlementsUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *GrantEntitlementsUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/entitlements/grant][%d] grantEntitlementsUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *GrantEntitlementsUnprocessableEntity) ToJSONString() string {
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

func (o *GrantEntitlementsUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *GrantEntitlementsUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
