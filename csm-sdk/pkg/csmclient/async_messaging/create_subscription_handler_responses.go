// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package async_messaging

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

// CreateSubscriptionHandlerReader is a Reader for the CreateSubscriptionHandler structure.
type CreateSubscriptionHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateSubscriptionHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewCreateSubscriptionHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateSubscriptionHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateSubscriptionHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateSubscriptionHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateSubscriptionHandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateSubscriptionHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/subscriptions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateSubscriptionHandlerOK creates a CreateSubscriptionHandlerOK with default headers values
func NewCreateSubscriptionHandlerOK() *CreateSubscriptionHandlerOK {
	return &CreateSubscriptionHandlerOK{}
}

/*CreateSubscriptionHandlerOK handles this case with default header values.

  OK
*/
type CreateSubscriptionHandlerOK struct {
	Payload *csmclientmodels.ApimodelCreateSubscriptionResponse
}

func (o *CreateSubscriptionHandlerOK) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/subscriptions][%d] createSubscriptionHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *CreateSubscriptionHandlerOK) ToJSONString() string {
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

func (o *CreateSubscriptionHandlerOK) GetPayload() *csmclientmodels.ApimodelCreateSubscriptionResponse {
	return o.Payload
}

func (o *CreateSubscriptionHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelCreateSubscriptionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateSubscriptionHandlerBadRequest creates a CreateSubscriptionHandlerBadRequest with default headers values
func NewCreateSubscriptionHandlerBadRequest() *CreateSubscriptionHandlerBadRequest {
	return &CreateSubscriptionHandlerBadRequest{}
}

/*CreateSubscriptionHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type CreateSubscriptionHandlerBadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateSubscriptionHandlerBadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/subscriptions][%d] createSubscriptionHandlerBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateSubscriptionHandlerBadRequest) ToJSONString() string {
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

func (o *CreateSubscriptionHandlerBadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateSubscriptionHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateSubscriptionHandlerUnauthorized creates a CreateSubscriptionHandlerUnauthorized with default headers values
func NewCreateSubscriptionHandlerUnauthorized() *CreateSubscriptionHandlerUnauthorized {
	return &CreateSubscriptionHandlerUnauthorized{}
}

/*CreateSubscriptionHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateSubscriptionHandlerUnauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateSubscriptionHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/subscriptions][%d] createSubscriptionHandlerUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateSubscriptionHandlerUnauthorized) ToJSONString() string {
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

func (o *CreateSubscriptionHandlerUnauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateSubscriptionHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateSubscriptionHandlerForbidden creates a CreateSubscriptionHandlerForbidden with default headers values
func NewCreateSubscriptionHandlerForbidden() *CreateSubscriptionHandlerForbidden {
	return &CreateSubscriptionHandlerForbidden{}
}

/*CreateSubscriptionHandlerForbidden handles this case with default header values.

  Forbidden
*/
type CreateSubscriptionHandlerForbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateSubscriptionHandlerForbidden) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/subscriptions][%d] createSubscriptionHandlerForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateSubscriptionHandlerForbidden) ToJSONString() string {
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

func (o *CreateSubscriptionHandlerForbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateSubscriptionHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateSubscriptionHandlerNotFound creates a CreateSubscriptionHandlerNotFound with default headers values
func NewCreateSubscriptionHandlerNotFound() *CreateSubscriptionHandlerNotFound {
	return &CreateSubscriptionHandlerNotFound{}
}

/*CreateSubscriptionHandlerNotFound handles this case with default header values.

  Not Found
*/
type CreateSubscriptionHandlerNotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateSubscriptionHandlerNotFound) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/subscriptions][%d] createSubscriptionHandlerNotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateSubscriptionHandlerNotFound) ToJSONString() string {
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

func (o *CreateSubscriptionHandlerNotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateSubscriptionHandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateSubscriptionHandlerInternalServerError creates a CreateSubscriptionHandlerInternalServerError with default headers values
func NewCreateSubscriptionHandlerInternalServerError() *CreateSubscriptionHandlerInternalServerError {
	return &CreateSubscriptionHandlerInternalServerError{}
}

/*CreateSubscriptionHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateSubscriptionHandlerInternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *CreateSubscriptionHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/subscriptions][%d] createSubscriptionHandlerInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateSubscriptionHandlerInternalServerError) ToJSONString() string {
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

func (o *CreateSubscriptionHandlerInternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateSubscriptionHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
