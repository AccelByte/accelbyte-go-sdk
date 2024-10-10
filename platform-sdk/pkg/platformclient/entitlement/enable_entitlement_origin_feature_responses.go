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

// EnableEntitlementOriginFeatureReader is a Reader for the EnableEntitlementOriginFeature structure.
type EnableEntitlementOriginFeatureReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *EnableEntitlementOriginFeatureReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewEnableEntitlementOriginFeatureOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/entitlements/config/entitlementOrigin/enable returns an error %d: %s", response.Code(), string(data))
	}
}

// NewEnableEntitlementOriginFeatureOK creates a EnableEntitlementOriginFeatureOK with default headers values
func NewEnableEntitlementOriginFeatureOK() *EnableEntitlementOriginFeatureOK {
	return &EnableEntitlementOriginFeatureOK{}
}

/*EnableEntitlementOriginFeatureOK handles this case with default header values.

  successful operation
*/
type EnableEntitlementOriginFeatureOK struct {
	Payload *platformclientmodels.EntitlementConfigInfo
}

func (o *EnableEntitlementOriginFeatureOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/entitlements/config/entitlementOrigin/enable][%d] enableEntitlementOriginFeatureOK  %+v", 200, o.ToJSONString())
}

func (o *EnableEntitlementOriginFeatureOK) ToJSONString() string {
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

func (o *EnableEntitlementOriginFeatureOK) GetPayload() *platformclientmodels.EntitlementConfigInfo {
	return o.Payload
}

func (o *EnableEntitlementOriginFeatureOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.EntitlementConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
