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

// GetNotificationSubscriberListV3Reader is a Reader for the GetNotificationSubscriberListV3 structure.
type GetNotificationSubscriberListV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetNotificationSubscriberListV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetNotificationSubscriberListV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetNotificationSubscriberListV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetNotificationSubscriberListV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetNotificationSubscriberListV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetNotificationSubscriberListV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetNotificationSubscriberListV3OK creates a GetNotificationSubscriberListV3OK with default headers values
func NewGetNotificationSubscriberListV3OK() *GetNotificationSubscriberListV3OK {
	return &GetNotificationSubscriberListV3OK{}
}

/*GetNotificationSubscriberListV3OK handles this case with default header values.


 */
type GetNotificationSubscriberListV3OK struct {
	Payload *csmclientmodels.ApimodelGetNotificationSubscriberListResponseV2
}

func (o *GetNotificationSubscriberListV3OK) Error() string {
	return fmt.Sprintf("[GET /csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] getNotificationSubscriberListV3OK  %+v", 200, o.ToJSONString())
}

func (o *GetNotificationSubscriberListV3OK) ToJSONString() string {
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

func (o *GetNotificationSubscriberListV3OK) GetPayload() *csmclientmodels.ApimodelGetNotificationSubscriberListResponseV2 {
	return o.Payload
}

func (o *GetNotificationSubscriberListV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelGetNotificationSubscriberListResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetNotificationSubscriberListV3Unauthorized creates a GetNotificationSubscriberListV3Unauthorized with default headers values
func NewGetNotificationSubscriberListV3Unauthorized() *GetNotificationSubscriberListV3Unauthorized {
	return &GetNotificationSubscriberListV3Unauthorized{}
}

/*GetNotificationSubscriberListV3Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetNotificationSubscriberListV3Unauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNotificationSubscriberListV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] getNotificationSubscriberListV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetNotificationSubscriberListV3Unauthorized) ToJSONString() string {
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

func (o *GetNotificationSubscriberListV3Unauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNotificationSubscriberListV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetNotificationSubscriberListV3Forbidden creates a GetNotificationSubscriberListV3Forbidden with default headers values
func NewGetNotificationSubscriberListV3Forbidden() *GetNotificationSubscriberListV3Forbidden {
	return &GetNotificationSubscriberListV3Forbidden{}
}

/*GetNotificationSubscriberListV3Forbidden handles this case with default header values.

  Forbidden
*/
type GetNotificationSubscriberListV3Forbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNotificationSubscriberListV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] getNotificationSubscriberListV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetNotificationSubscriberListV3Forbidden) ToJSONString() string {
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

func (o *GetNotificationSubscriberListV3Forbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNotificationSubscriberListV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetNotificationSubscriberListV3NotFound creates a GetNotificationSubscriberListV3NotFound with default headers values
func NewGetNotificationSubscriberListV3NotFound() *GetNotificationSubscriberListV3NotFound {
	return &GetNotificationSubscriberListV3NotFound{}
}

/*GetNotificationSubscriberListV3NotFound handles this case with default header values.

  Not Found
*/
type GetNotificationSubscriberListV3NotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNotificationSubscriberListV3NotFound) Error() string {
	return fmt.Sprintf("[GET /csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] getNotificationSubscriberListV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetNotificationSubscriberListV3NotFound) ToJSONString() string {
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

func (o *GetNotificationSubscriberListV3NotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNotificationSubscriberListV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetNotificationSubscriberListV3InternalServerError creates a GetNotificationSubscriberListV3InternalServerError with default headers values
func NewGetNotificationSubscriberListV3InternalServerError() *GetNotificationSubscriberListV3InternalServerError {
	return &GetNotificationSubscriberListV3InternalServerError{}
}

/*GetNotificationSubscriberListV3InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetNotificationSubscriberListV3InternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetNotificationSubscriberListV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions][%d] getNotificationSubscriberListV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetNotificationSubscriberListV3InternalServerError) ToJSONString() string {
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

func (o *GetNotificationSubscriberListV3InternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetNotificationSubscriberListV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
