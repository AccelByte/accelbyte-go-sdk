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

// DeleteSubscriptionAppNotificationV2Reader is a Reader for the DeleteSubscriptionAppNotificationV2 structure.
type DeleteSubscriptionAppNotificationV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteSubscriptionAppNotificationV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDeleteSubscriptionAppNotificationV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteSubscriptionAppNotificationV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteSubscriptionAppNotificationV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteSubscriptionAppNotificationV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteSubscriptionAppNotificationV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/{subscriptionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteSubscriptionAppNotificationV2OK creates a DeleteSubscriptionAppNotificationV2OK with default headers values
func NewDeleteSubscriptionAppNotificationV2OK() *DeleteSubscriptionAppNotificationV2OK {
	return &DeleteSubscriptionAppNotificationV2OK{}
}

/*DeleteSubscriptionAppNotificationV2OK handles this case with default header values.


 */
type DeleteSubscriptionAppNotificationV2OK struct {
}

func (o *DeleteSubscriptionAppNotificationV2OK) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/{subscriptionId}][%d] deleteSubscriptionAppNotificationV2OK ", 200)
}

func (o *DeleteSubscriptionAppNotificationV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteSubscriptionAppNotificationV2Unauthorized creates a DeleteSubscriptionAppNotificationV2Unauthorized with default headers values
func NewDeleteSubscriptionAppNotificationV2Unauthorized() *DeleteSubscriptionAppNotificationV2Unauthorized {
	return &DeleteSubscriptionAppNotificationV2Unauthorized{}
}

/*DeleteSubscriptionAppNotificationV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteSubscriptionAppNotificationV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSubscriptionAppNotificationV2Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/{subscriptionId}][%d] deleteSubscriptionAppNotificationV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteSubscriptionAppNotificationV2Unauthorized) ToJSONString() string {
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

func (o *DeleteSubscriptionAppNotificationV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSubscriptionAppNotificationV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSubscriptionAppNotificationV2Forbidden creates a DeleteSubscriptionAppNotificationV2Forbidden with default headers values
func NewDeleteSubscriptionAppNotificationV2Forbidden() *DeleteSubscriptionAppNotificationV2Forbidden {
	return &DeleteSubscriptionAppNotificationV2Forbidden{}
}

/*DeleteSubscriptionAppNotificationV2Forbidden handles this case with default header values.

  Forbidden
*/
type DeleteSubscriptionAppNotificationV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSubscriptionAppNotificationV2Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/{subscriptionId}][%d] deleteSubscriptionAppNotificationV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteSubscriptionAppNotificationV2Forbidden) ToJSONString() string {
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

func (o *DeleteSubscriptionAppNotificationV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSubscriptionAppNotificationV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSubscriptionAppNotificationV2NotFound creates a DeleteSubscriptionAppNotificationV2NotFound with default headers values
func NewDeleteSubscriptionAppNotificationV2NotFound() *DeleteSubscriptionAppNotificationV2NotFound {
	return &DeleteSubscriptionAppNotificationV2NotFound{}
}

/*DeleteSubscriptionAppNotificationV2NotFound handles this case with default header values.

  Not Found
*/
type DeleteSubscriptionAppNotificationV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSubscriptionAppNotificationV2NotFound) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/{subscriptionId}][%d] deleteSubscriptionAppNotificationV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteSubscriptionAppNotificationV2NotFound) ToJSONString() string {
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

func (o *DeleteSubscriptionAppNotificationV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSubscriptionAppNotificationV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSubscriptionAppNotificationV2InternalServerError creates a DeleteSubscriptionAppNotificationV2InternalServerError with default headers values
func NewDeleteSubscriptionAppNotificationV2InternalServerError() *DeleteSubscriptionAppNotificationV2InternalServerError {
	return &DeleteSubscriptionAppNotificationV2InternalServerError{}
}

/*DeleteSubscriptionAppNotificationV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteSubscriptionAppNotificationV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSubscriptionAppNotificationV2InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/{subscriptionId}][%d] deleteSubscriptionAppNotificationV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteSubscriptionAppNotificationV2InternalServerError) ToJSONString() string {
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

func (o *DeleteSubscriptionAppNotificationV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSubscriptionAppNotificationV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
