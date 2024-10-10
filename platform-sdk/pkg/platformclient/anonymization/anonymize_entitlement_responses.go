// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package anonymization

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// AnonymizeEntitlementReader is a Reader for the AnonymizeEntitlement structure.
type AnonymizeEntitlementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AnonymizeEntitlementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAnonymizeEntitlementNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/entitlements returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAnonymizeEntitlementNoContent creates a AnonymizeEntitlementNoContent with default headers values
func NewAnonymizeEntitlementNoContent() *AnonymizeEntitlementNoContent {
	return &AnonymizeEntitlementNoContent{}
}

/*AnonymizeEntitlementNoContent handles this case with default header values.

  Anonymize successfully
*/
type AnonymizeEntitlementNoContent struct {
}

func (o *AnonymizeEntitlementNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/entitlements][%d] anonymizeEntitlementNoContent ", 204)
}

func (o *AnonymizeEntitlementNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
