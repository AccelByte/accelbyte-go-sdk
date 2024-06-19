// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platform

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

// GetXboxEntitlementOwnershipReader is a Reader for the GetXboxEntitlementOwnership structure.
type GetXboxEntitlementOwnershipReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetXboxEntitlementOwnershipReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetXboxEntitlementOwnershipOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/platforms/xbl/entitlements/{productSku}/ownership returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetXboxEntitlementOwnershipOK creates a GetXboxEntitlementOwnershipOK with default headers values
func NewGetXboxEntitlementOwnershipOK() *GetXboxEntitlementOwnershipOK {
	return &GetXboxEntitlementOwnershipOK{}
}

/*GetXboxEntitlementOwnershipOK handles this case with default header values.

  successful operation
*/
type GetXboxEntitlementOwnershipOK struct {
	Payload *platformclientmodels.PlatformOwnership
}

func (o *GetXboxEntitlementOwnershipOK) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/platforms/xbl/entitlements/{productSku}/ownership][%d] getXboxEntitlementOwnershipOK  %+v", 200, o.ToJSONString())
}

func (o *GetXboxEntitlementOwnershipOK) ToJSONString() string {
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

func (o *GetXboxEntitlementOwnershipOK) GetPayload() *platformclientmodels.PlatformOwnership {
	return o.Payload
}

func (o *GetXboxEntitlementOwnershipOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.PlatformOwnership)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
