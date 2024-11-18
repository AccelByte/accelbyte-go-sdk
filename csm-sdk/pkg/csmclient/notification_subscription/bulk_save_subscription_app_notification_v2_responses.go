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

// BulkSaveSubscriptionAppNotificationV2Reader is a Reader for the BulkSaveSubscriptionAppNotificationV2 structure.
type BulkSaveSubscriptionAppNotificationV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkSaveSubscriptionAppNotificationV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkSaveSubscriptionAppNotificationV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkSaveSubscriptionAppNotificationV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkSaveSubscriptionAppNotificationV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewBulkSaveSubscriptionAppNotificationV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkSaveSubscriptionAppNotificationV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkSaveSubscriptionAppNotificationV2OK creates a BulkSaveSubscriptionAppNotificationV2OK with default headers values
func NewBulkSaveSubscriptionAppNotificationV2OK() *BulkSaveSubscriptionAppNotificationV2OK {
	return &BulkSaveSubscriptionAppNotificationV2OK{}
}

/*BulkSaveSubscriptionAppNotificationV2OK handles this case with default header values.


 */
type BulkSaveSubscriptionAppNotificationV2OK struct {
	Payload *csmclientmodels.ApimodelGetNotificationSubscriberListResponse
}

func (o *BulkSaveSubscriptionAppNotificationV2OK) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] bulkSaveSubscriptionAppNotificationV2OK  %+v", 200, o.ToJSONString())
}

func (o *BulkSaveSubscriptionAppNotificationV2OK) ToJSONString() string {
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

func (o *BulkSaveSubscriptionAppNotificationV2OK) GetPayload() *csmclientmodels.ApimodelGetNotificationSubscriberListResponse {
	return o.Payload
}

func (o *BulkSaveSubscriptionAppNotificationV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelGetNotificationSubscriberListResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkSaveSubscriptionAppNotificationV2Unauthorized creates a BulkSaveSubscriptionAppNotificationV2Unauthorized with default headers values
func NewBulkSaveSubscriptionAppNotificationV2Unauthorized() *BulkSaveSubscriptionAppNotificationV2Unauthorized {
	return &BulkSaveSubscriptionAppNotificationV2Unauthorized{}
}

/*BulkSaveSubscriptionAppNotificationV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type BulkSaveSubscriptionAppNotificationV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *BulkSaveSubscriptionAppNotificationV2Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] bulkSaveSubscriptionAppNotificationV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkSaveSubscriptionAppNotificationV2Unauthorized) ToJSONString() string {
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

func (o *BulkSaveSubscriptionAppNotificationV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *BulkSaveSubscriptionAppNotificationV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkSaveSubscriptionAppNotificationV2Forbidden creates a BulkSaveSubscriptionAppNotificationV2Forbidden with default headers values
func NewBulkSaveSubscriptionAppNotificationV2Forbidden() *BulkSaveSubscriptionAppNotificationV2Forbidden {
	return &BulkSaveSubscriptionAppNotificationV2Forbidden{}
}

/*BulkSaveSubscriptionAppNotificationV2Forbidden handles this case with default header values.

  Forbidden
*/
type BulkSaveSubscriptionAppNotificationV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *BulkSaveSubscriptionAppNotificationV2Forbidden) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] bulkSaveSubscriptionAppNotificationV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkSaveSubscriptionAppNotificationV2Forbidden) ToJSONString() string {
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

func (o *BulkSaveSubscriptionAppNotificationV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *BulkSaveSubscriptionAppNotificationV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkSaveSubscriptionAppNotificationV2NotFound creates a BulkSaveSubscriptionAppNotificationV2NotFound with default headers values
func NewBulkSaveSubscriptionAppNotificationV2NotFound() *BulkSaveSubscriptionAppNotificationV2NotFound {
	return &BulkSaveSubscriptionAppNotificationV2NotFound{}
}

/*BulkSaveSubscriptionAppNotificationV2NotFound handles this case with default header values.

  Not Found
*/
type BulkSaveSubscriptionAppNotificationV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *BulkSaveSubscriptionAppNotificationV2NotFound) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] bulkSaveSubscriptionAppNotificationV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *BulkSaveSubscriptionAppNotificationV2NotFound) ToJSONString() string {
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

func (o *BulkSaveSubscriptionAppNotificationV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *BulkSaveSubscriptionAppNotificationV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewBulkSaveSubscriptionAppNotificationV2InternalServerError creates a BulkSaveSubscriptionAppNotificationV2InternalServerError with default headers values
func NewBulkSaveSubscriptionAppNotificationV2InternalServerError() *BulkSaveSubscriptionAppNotificationV2InternalServerError {
	return &BulkSaveSubscriptionAppNotificationV2InternalServerError{}
}

/*BulkSaveSubscriptionAppNotificationV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type BulkSaveSubscriptionAppNotificationV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *BulkSaveSubscriptionAppNotificationV2InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] bulkSaveSubscriptionAppNotificationV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkSaveSubscriptionAppNotificationV2InternalServerError) ToJSONString() string {
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

func (o *BulkSaveSubscriptionAppNotificationV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *BulkSaveSubscriptionAppNotificationV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
