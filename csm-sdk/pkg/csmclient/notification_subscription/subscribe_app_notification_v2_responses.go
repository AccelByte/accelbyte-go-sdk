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

// SubscribeAppNotificationV2Reader is a Reader for the SubscribeAppNotificationV2 structure.
type SubscribeAppNotificationV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SubscribeAppNotificationV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSubscribeAppNotificationV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSubscribeAppNotificationV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewSubscribeAppNotificationV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSubscribeAppNotificationV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSubscribeAppNotificationV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSubscribeAppNotificationV2OK creates a SubscribeAppNotificationV2OK with default headers values
func NewSubscribeAppNotificationV2OK() *SubscribeAppNotificationV2OK {
	return &SubscribeAppNotificationV2OK{}
}

/*SubscribeAppNotificationV2OK handles this case with default header values.


 */
type SubscribeAppNotificationV2OK struct {
	Payload *csmclientmodels.ApimodelSubscribeNotificationResponse
}

func (o *SubscribeAppNotificationV2OK) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] subscribeAppNotificationV2OK  %+v", 200, o.ToJSONString())
}

func (o *SubscribeAppNotificationV2OK) ToJSONString() string {
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

func (o *SubscribeAppNotificationV2OK) GetPayload() *csmclientmodels.ApimodelSubscribeNotificationResponse {
	return o.Payload
}

func (o *SubscribeAppNotificationV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelSubscribeNotificationResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSubscribeAppNotificationV2Unauthorized creates a SubscribeAppNotificationV2Unauthorized with default headers values
func NewSubscribeAppNotificationV2Unauthorized() *SubscribeAppNotificationV2Unauthorized {
	return &SubscribeAppNotificationV2Unauthorized{}
}

/*SubscribeAppNotificationV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type SubscribeAppNotificationV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *SubscribeAppNotificationV2Unauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] subscribeAppNotificationV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *SubscribeAppNotificationV2Unauthorized) ToJSONString() string {
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

func (o *SubscribeAppNotificationV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SubscribeAppNotificationV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSubscribeAppNotificationV2Forbidden creates a SubscribeAppNotificationV2Forbidden with default headers values
func NewSubscribeAppNotificationV2Forbidden() *SubscribeAppNotificationV2Forbidden {
	return &SubscribeAppNotificationV2Forbidden{}
}

/*SubscribeAppNotificationV2Forbidden handles this case with default header values.

  Forbidden
*/
type SubscribeAppNotificationV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *SubscribeAppNotificationV2Forbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] subscribeAppNotificationV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *SubscribeAppNotificationV2Forbidden) ToJSONString() string {
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

func (o *SubscribeAppNotificationV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SubscribeAppNotificationV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSubscribeAppNotificationV2NotFound creates a SubscribeAppNotificationV2NotFound with default headers values
func NewSubscribeAppNotificationV2NotFound() *SubscribeAppNotificationV2NotFound {
	return &SubscribeAppNotificationV2NotFound{}
}

/*SubscribeAppNotificationV2NotFound handles this case with default header values.

  Not Found
*/
type SubscribeAppNotificationV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *SubscribeAppNotificationV2NotFound) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] subscribeAppNotificationV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *SubscribeAppNotificationV2NotFound) ToJSONString() string {
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

func (o *SubscribeAppNotificationV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SubscribeAppNotificationV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewSubscribeAppNotificationV2InternalServerError creates a SubscribeAppNotificationV2InternalServerError with default headers values
func NewSubscribeAppNotificationV2InternalServerError() *SubscribeAppNotificationV2InternalServerError {
	return &SubscribeAppNotificationV2InternalServerError{}
}

/*SubscribeAppNotificationV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type SubscribeAppNotificationV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *SubscribeAppNotificationV2InternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] subscribeAppNotificationV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SubscribeAppNotificationV2InternalServerError) ToJSONString() string {
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

func (o *SubscribeAppNotificationV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *SubscribeAppNotificationV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
