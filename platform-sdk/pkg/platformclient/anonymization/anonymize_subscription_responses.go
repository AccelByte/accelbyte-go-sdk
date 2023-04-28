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

// AnonymizeSubscriptionReader is a Reader for the AnonymizeSubscription structure.
type AnonymizeSubscriptionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AnonymizeSubscriptionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAnonymizeSubscriptionNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/subscriptions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAnonymizeSubscriptionNoContent creates a AnonymizeSubscriptionNoContent with default headers values
func NewAnonymizeSubscriptionNoContent() *AnonymizeSubscriptionNoContent {
	return &AnonymizeSubscriptionNoContent{}
}

/*AnonymizeSubscriptionNoContent handles this case with default header values.

  Anonymize successfully
*/
type AnonymizeSubscriptionNoContent struct {
}

func (o *AnonymizeSubscriptionNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/users/{userId}/anonymization/subscriptions][%d] anonymizeSubscriptionNoContent ", 204)
}

func (o *AnonymizeSubscriptionNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
