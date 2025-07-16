// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package notification_subscription_v3

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

// DeleteSubscriptionAppNotificationV3Reader is a Reader for the DeleteSubscriptionAppNotificationV3 structure.
type DeleteSubscriptionAppNotificationV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteSubscriptionAppNotificationV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteSubscriptionAppNotificationV3NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteSubscriptionAppNotificationV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteSubscriptionAppNotificationV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteSubscriptionAppNotificationV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteSubscriptionAppNotificationV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteSubscriptionAppNotificationV3NoContent creates a DeleteSubscriptionAppNotificationV3NoContent with default headers values
func NewDeleteSubscriptionAppNotificationV3NoContent() *DeleteSubscriptionAppNotificationV3NoContent {
	return &DeleteSubscriptionAppNotificationV3NoContent{}
}

/*DeleteSubscriptionAppNotificationV3NoContent handles this case with default header values.


 */
type DeleteSubscriptionAppNotificationV3NoContent struct {
}

func (o *DeleteSubscriptionAppNotificationV3NoContent) Error() string {
	return fmt.Sprintf("[DELETE /csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] deleteSubscriptionAppNotificationV3NoContent ", 204)
}

func (o *DeleteSubscriptionAppNotificationV3NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteSubscriptionAppNotificationV3Unauthorized creates a DeleteSubscriptionAppNotificationV3Unauthorized with default headers values
func NewDeleteSubscriptionAppNotificationV3Unauthorized() *DeleteSubscriptionAppNotificationV3Unauthorized {
	return &DeleteSubscriptionAppNotificationV3Unauthorized{}
}

/*DeleteSubscriptionAppNotificationV3Unauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteSubscriptionAppNotificationV3Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSubscriptionAppNotificationV3Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] deleteSubscriptionAppNotificationV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteSubscriptionAppNotificationV3Unauthorized) ToJSONString() string {
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

func (o *DeleteSubscriptionAppNotificationV3Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSubscriptionAppNotificationV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSubscriptionAppNotificationV3Forbidden creates a DeleteSubscriptionAppNotificationV3Forbidden with default headers values
func NewDeleteSubscriptionAppNotificationV3Forbidden() *DeleteSubscriptionAppNotificationV3Forbidden {
	return &DeleteSubscriptionAppNotificationV3Forbidden{}
}

/*DeleteSubscriptionAppNotificationV3Forbidden handles this case with default header values.

  Forbidden
*/
type DeleteSubscriptionAppNotificationV3Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSubscriptionAppNotificationV3Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] deleteSubscriptionAppNotificationV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteSubscriptionAppNotificationV3Forbidden) ToJSONString() string {
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

func (o *DeleteSubscriptionAppNotificationV3Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSubscriptionAppNotificationV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSubscriptionAppNotificationV3NotFound creates a DeleteSubscriptionAppNotificationV3NotFound with default headers values
func NewDeleteSubscriptionAppNotificationV3NotFound() *DeleteSubscriptionAppNotificationV3NotFound {
	return &DeleteSubscriptionAppNotificationV3NotFound{}
}

/*DeleteSubscriptionAppNotificationV3NotFound handles this case with default header values.

  Not Found
*/
type DeleteSubscriptionAppNotificationV3NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSubscriptionAppNotificationV3NotFound) Error() string {
	return fmt.Sprintf("[DELETE /csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] deleteSubscriptionAppNotificationV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteSubscriptionAppNotificationV3NotFound) ToJSONString() string {
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

func (o *DeleteSubscriptionAppNotificationV3NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSubscriptionAppNotificationV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteSubscriptionAppNotificationV3InternalServerError creates a DeleteSubscriptionAppNotificationV3InternalServerError with default headers values
func NewDeleteSubscriptionAppNotificationV3InternalServerError() *DeleteSubscriptionAppNotificationV3InternalServerError {
	return &DeleteSubscriptionAppNotificationV3InternalServerError{}
}

/*DeleteSubscriptionAppNotificationV3InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteSubscriptionAppNotificationV3InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteSubscriptionAppNotificationV3InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] deleteSubscriptionAppNotificationV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteSubscriptionAppNotificationV3InternalServerError) ToJSONString() string {
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

func (o *DeleteSubscriptionAppNotificationV3InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteSubscriptionAppNotificationV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
