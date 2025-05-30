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

// PublicExistsAnyMyActiveEntitlementReader is a Reader for the PublicExistsAnyMyActiveEntitlement structure.
type PublicExistsAnyMyActiveEntitlementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicExistsAnyMyActiveEntitlementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicExistsAnyMyActiveEntitlementOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/users/me/entitlements/ownership/any returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicExistsAnyMyActiveEntitlementOK creates a PublicExistsAnyMyActiveEntitlementOK with default headers values
func NewPublicExistsAnyMyActiveEntitlementOK() *PublicExistsAnyMyActiveEntitlementOK {
	return &PublicExistsAnyMyActiveEntitlementOK{}
}

/*PublicExistsAnyMyActiveEntitlementOK handles this case with default header values.

  successful operation
*/
type PublicExistsAnyMyActiveEntitlementOK struct {
	Payload *platformclientmodels.Ownership
}

func (o *PublicExistsAnyMyActiveEntitlementOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/users/me/entitlements/ownership/any][%d] publicExistsAnyMyActiveEntitlementOK  %+v", 200, o.ToJSONString())
}

func (o *PublicExistsAnyMyActiveEntitlementOK) ToJSONString() string {
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

func (o *PublicExistsAnyMyActiveEntitlementOK) GetPayload() *platformclientmodels.Ownership {
	return o.Payload
}

func (o *PublicExistsAnyMyActiveEntitlementOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.Ownership)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
