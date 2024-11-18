// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package notification_subscription

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
)

// DeleteSubscriptionAppNotificationByUserIDV2Reader is a Reader for the DeleteSubscriptionAppNotificationByUserIDV2 structure.
type DeleteSubscriptionAppNotificationByUserIDV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteSubscriptionAppNotificationByUserIDV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDeleteSubscriptionAppNotificationByUserIDV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteSubscriptionAppNotificationByUserIDV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteSubscriptionAppNotificationByUserIDV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteSubscriptionAppNotificationByUserIDV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteSubscriptionAppNotificationByUserIDV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteSubscriptionAppNotificationByUserIDV2OK creates a DeleteSubscriptionAppNotificationByUserIDV2OK with default headers values
func NewDeleteSubscriptionAppNotificationByUserIDV2OK() *DeleteSubscriptionAppNotificationByUserIDV2OK {
	return &DeleteSubscriptionAppNotificationByUserIDV2OK{}
}

/*DeleteSubscriptionAppNotificationByUserIDV2OK handles this case with default header values.


 */
type DeleteSubscriptionAppNotificationByUserIDV2OK struct {
}

func (o *DeleteSubscriptionAppNotificationByUserIDV2OK) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/users/{userId}][%d] deleteSubscriptionAppNotificationByUserIdV2OK ", 200)
}

func (o *DeleteSubscriptionAppNotificationByUserIDV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteSubscriptionAppNotificationByUserIDV2Unauthorized creates a DeleteSubscriptionAppNotificationByUserIDV2Unauthorized with default headers values
func NewDeleteSubscriptionAppNotificationByUserIDV2Unauthorized() *DeleteSubscriptionAppNotificationByUserIDV2Unauthorized {
	return &DeleteSubscriptionAppNotificationByUserIDV2Unauthorized{}
}

/*DeleteSubscriptionAppNotificationByUserIDV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteSubscriptionAppNotificationByUserIDV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSubscriptionAppNotificationByUserIDV2Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/users/{userId}][%d] deleteSubscriptionAppNotificationByUserIdV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteSubscriptionAppNotificationByUserIDV2Unauthorized) ToJSONString() string {
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

func (o *DeleteSubscriptionAppNotificationByUserIDV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSubscriptionAppNotificationByUserIDV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteSubscriptionAppNotificationByUserIDV2Forbidden creates a DeleteSubscriptionAppNotificationByUserIDV2Forbidden with default headers values
func NewDeleteSubscriptionAppNotificationByUserIDV2Forbidden() *DeleteSubscriptionAppNotificationByUserIDV2Forbidden {
	return &DeleteSubscriptionAppNotificationByUserIDV2Forbidden{}
}

/*DeleteSubscriptionAppNotificationByUserIDV2Forbidden handles this case with default header values.

  Forbidden
*/
type DeleteSubscriptionAppNotificationByUserIDV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSubscriptionAppNotificationByUserIDV2Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/users/{userId}][%d] deleteSubscriptionAppNotificationByUserIdV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteSubscriptionAppNotificationByUserIDV2Forbidden) ToJSONString() string {
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

func (o *DeleteSubscriptionAppNotificationByUserIDV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSubscriptionAppNotificationByUserIDV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteSubscriptionAppNotificationByUserIDV2NotFound creates a DeleteSubscriptionAppNotificationByUserIDV2NotFound with default headers values
func NewDeleteSubscriptionAppNotificationByUserIDV2NotFound() *DeleteSubscriptionAppNotificationByUserIDV2NotFound {
	return &DeleteSubscriptionAppNotificationByUserIDV2NotFound{}
}

/*DeleteSubscriptionAppNotificationByUserIDV2NotFound handles this case with default header values.

  Not Found
*/
type DeleteSubscriptionAppNotificationByUserIDV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSubscriptionAppNotificationByUserIDV2NotFound) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/users/{userId}][%d] deleteSubscriptionAppNotificationByUserIdV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteSubscriptionAppNotificationByUserIDV2NotFound) ToJSONString() string {
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

func (o *DeleteSubscriptionAppNotificationByUserIDV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSubscriptionAppNotificationByUserIDV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteSubscriptionAppNotificationByUserIDV2InternalServerError creates a DeleteSubscriptionAppNotificationByUserIDV2InternalServerError with default headers values
func NewDeleteSubscriptionAppNotificationByUserIDV2InternalServerError() *DeleteSubscriptionAppNotificationByUserIDV2InternalServerError {
	return &DeleteSubscriptionAppNotificationByUserIDV2InternalServerError{}
}

/*DeleteSubscriptionAppNotificationByUserIDV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteSubscriptionAppNotificationByUserIDV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSubscriptionAppNotificationByUserIDV2InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/users/{userId}][%d] deleteSubscriptionAppNotificationByUserIdV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteSubscriptionAppNotificationByUserIDV2InternalServerError) ToJSONString() string {
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

func (o *DeleteSubscriptionAppNotificationByUserIDV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSubscriptionAppNotificationByUserIDV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
