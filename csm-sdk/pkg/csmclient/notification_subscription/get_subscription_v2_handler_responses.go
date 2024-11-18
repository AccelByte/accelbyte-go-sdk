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

// GetSubscriptionV2HandlerReader is a Reader for the GetSubscriptionV2Handler structure.
type GetSubscriptionV2HandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetSubscriptionV2HandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetSubscriptionV2HandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetSubscriptionV2HandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetSubscriptionV2HandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetSubscriptionV2HandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetSubscriptionV2HandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetSubscriptionV2HandlerOK creates a GetSubscriptionV2HandlerOK with default headers values
func NewGetSubscriptionV2HandlerOK() *GetSubscriptionV2HandlerOK {
	return &GetSubscriptionV2HandlerOK{}
}

/*GetSubscriptionV2HandlerOK handles this case with default header values.


 */
type GetSubscriptionV2HandlerOK struct {
	Payload *csmclientmodels.ApimodelGetNotificationSubscriberStatusResponse
}

func (o *GetSubscriptionV2HandlerOK) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me][%d] getSubscriptionV2HandlerOK  %+v", 200, o.ToJSONString())
}

func (o *GetSubscriptionV2HandlerOK) ToJSONString() string {
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

func (o *GetSubscriptionV2HandlerOK) GetPayload() *csmclientmodels.ApimodelGetNotificationSubscriberStatusResponse {
	return o.Payload
}

func (o *GetSubscriptionV2HandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelGetNotificationSubscriberStatusResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetSubscriptionV2HandlerUnauthorized creates a GetSubscriptionV2HandlerUnauthorized with default headers values
func NewGetSubscriptionV2HandlerUnauthorized() *GetSubscriptionV2HandlerUnauthorized {
	return &GetSubscriptionV2HandlerUnauthorized{}
}

/*GetSubscriptionV2HandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetSubscriptionV2HandlerUnauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetSubscriptionV2HandlerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me][%d] getSubscriptionV2HandlerUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetSubscriptionV2HandlerUnauthorized) ToJSONString() string {
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

func (o *GetSubscriptionV2HandlerUnauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetSubscriptionV2HandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetSubscriptionV2HandlerForbidden creates a GetSubscriptionV2HandlerForbidden with default headers values
func NewGetSubscriptionV2HandlerForbidden() *GetSubscriptionV2HandlerForbidden {
	return &GetSubscriptionV2HandlerForbidden{}
}

/*GetSubscriptionV2HandlerForbidden handles this case with default header values.

  Forbidden
*/
type GetSubscriptionV2HandlerForbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetSubscriptionV2HandlerForbidden) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me][%d] getSubscriptionV2HandlerForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetSubscriptionV2HandlerForbidden) ToJSONString() string {
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

func (o *GetSubscriptionV2HandlerForbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetSubscriptionV2HandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetSubscriptionV2HandlerNotFound creates a GetSubscriptionV2HandlerNotFound with default headers values
func NewGetSubscriptionV2HandlerNotFound() *GetSubscriptionV2HandlerNotFound {
	return &GetSubscriptionV2HandlerNotFound{}
}

/*GetSubscriptionV2HandlerNotFound handles this case with default header values.

  Not Found
*/
type GetSubscriptionV2HandlerNotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetSubscriptionV2HandlerNotFound) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me][%d] getSubscriptionV2HandlerNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetSubscriptionV2HandlerNotFound) ToJSONString() string {
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

func (o *GetSubscriptionV2HandlerNotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetSubscriptionV2HandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetSubscriptionV2HandlerInternalServerError creates a GetSubscriptionV2HandlerInternalServerError with default headers values
func NewGetSubscriptionV2HandlerInternalServerError() *GetSubscriptionV2HandlerInternalServerError {
	return &GetSubscriptionV2HandlerInternalServerError{}
}

/*GetSubscriptionV2HandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetSubscriptionV2HandlerInternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *GetSubscriptionV2HandlerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me][%d] getSubscriptionV2HandlerInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetSubscriptionV2HandlerInternalServerError) ToJSONString() string {
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

func (o *GetSubscriptionV2HandlerInternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetSubscriptionV2HandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
