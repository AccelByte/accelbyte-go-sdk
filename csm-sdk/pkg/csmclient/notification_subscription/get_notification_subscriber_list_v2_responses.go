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

// GetNotificationSubscriberListV2Reader is a Reader for the GetNotificationSubscriberListV2 structure.
type GetNotificationSubscriberListV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetNotificationSubscriberListV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetNotificationSubscriberListV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetNotificationSubscriberListV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetNotificationSubscriberListV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetNotificationSubscriberListV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetNotificationSubscriberListV2InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetNotificationSubscriberListV2OK creates a GetNotificationSubscriberListV2OK with default headers values
func NewGetNotificationSubscriberListV2OK() *GetNotificationSubscriberListV2OK {
	return &GetNotificationSubscriberListV2OK{}
}

/*GetNotificationSubscriberListV2OK handles this case with default header values.


 */
type GetNotificationSubscriberListV2OK struct {
	Payload *csmclientmodels.ApimodelGetNotificationSubscriberListResponse
}

func (o *GetNotificationSubscriberListV2OK) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] getNotificationSubscriberListV2OK  %+v", 200, o.ToJSONString())
}

func (o *GetNotificationSubscriberListV2OK) ToJSONString() string {
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

func (o *GetNotificationSubscriberListV2OK) GetPayload() *csmclientmodels.ApimodelGetNotificationSubscriberListResponse {
	return o.Payload
}

func (o *GetNotificationSubscriberListV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetNotificationSubscriberListV2Unauthorized creates a GetNotificationSubscriberListV2Unauthorized with default headers values
func NewGetNotificationSubscriberListV2Unauthorized() *GetNotificationSubscriberListV2Unauthorized {
	return &GetNotificationSubscriberListV2Unauthorized{}
}

/*GetNotificationSubscriberListV2Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetNotificationSubscriberListV2Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNotificationSubscriberListV2Unauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] getNotificationSubscriberListV2Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetNotificationSubscriberListV2Unauthorized) ToJSONString() string {
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

func (o *GetNotificationSubscriberListV2Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNotificationSubscriberListV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetNotificationSubscriberListV2Forbidden creates a GetNotificationSubscriberListV2Forbidden with default headers values
func NewGetNotificationSubscriberListV2Forbidden() *GetNotificationSubscriberListV2Forbidden {
	return &GetNotificationSubscriberListV2Forbidden{}
}

/*GetNotificationSubscriberListV2Forbidden handles this case with default header values.

  Forbidden
*/
type GetNotificationSubscriberListV2Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNotificationSubscriberListV2Forbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] getNotificationSubscriberListV2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetNotificationSubscriberListV2Forbidden) ToJSONString() string {
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

func (o *GetNotificationSubscriberListV2Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNotificationSubscriberListV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetNotificationSubscriberListV2NotFound creates a GetNotificationSubscriberListV2NotFound with default headers values
func NewGetNotificationSubscriberListV2NotFound() *GetNotificationSubscriberListV2NotFound {
	return &GetNotificationSubscriberListV2NotFound{}
}

/*GetNotificationSubscriberListV2NotFound handles this case with default header values.

  Not Found
*/
type GetNotificationSubscriberListV2NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNotificationSubscriberListV2NotFound) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] getNotificationSubscriberListV2NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetNotificationSubscriberListV2NotFound) ToJSONString() string {
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

func (o *GetNotificationSubscriberListV2NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNotificationSubscriberListV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetNotificationSubscriberListV2InternalServerError creates a GetNotificationSubscriberListV2InternalServerError with default headers values
func NewGetNotificationSubscriberListV2InternalServerError() *GetNotificationSubscriberListV2InternalServerError {
	return &GetNotificationSubscriberListV2InternalServerError{}
}

/*GetNotificationSubscriberListV2InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetNotificationSubscriberListV2InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNotificationSubscriberListV2InternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] getNotificationSubscriberListV2InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetNotificationSubscriberListV2InternalServerError) ToJSONString() string {
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

func (o *GetNotificationSubscriberListV2InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNotificationSubscriberListV2InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
