// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package subscription

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// DeleteUserSubscriptionReader is a Reader for the DeleteUserSubscription structure.
type DeleteUserSubscriptionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteUserSubscriptionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteUserSubscriptionNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteUserSubscriptionNoContent creates a DeleteUserSubscriptionNoContent with default headers values
func NewDeleteUserSubscriptionNoContent() *DeleteUserSubscriptionNoContent {
	return &DeleteUserSubscriptionNoContent{}
}

/*DeleteUserSubscriptionNoContent handles this case with default header values.

  delete user subscription successfully
*/
type DeleteUserSubscriptionNoContent struct {
}

func (o *DeleteUserSubscriptionNoContent) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/users/{userId}/subscriptions/{subscriptionId}][%d] deleteUserSubscriptionNoContent ", 204)
}

func (o *DeleteUserSubscriptionNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
