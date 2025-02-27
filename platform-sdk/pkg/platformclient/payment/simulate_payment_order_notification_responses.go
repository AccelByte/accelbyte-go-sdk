// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// SimulatePaymentOrderNotificationReader is a Reader for the SimulatePaymentOrderNotification structure.
type SimulatePaymentOrderNotificationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SimulatePaymentOrderNotificationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSimulatePaymentOrderNotificationOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSimulatePaymentOrderNotificationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewSimulatePaymentOrderNotificationNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/simulate-notification returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSimulatePaymentOrderNotificationOK creates a SimulatePaymentOrderNotificationOK with default headers values
func NewSimulatePaymentOrderNotificationOK() *SimulatePaymentOrderNotificationOK {
	return &SimulatePaymentOrderNotificationOK{}
}

/*SimulatePaymentOrderNotificationOK handles this case with default header values.

  successful operation
*/
type SimulatePaymentOrderNotificationOK struct {
	Payload *platformclientmodels.NotificationProcessResult
}

func (o *SimulatePaymentOrderNotificationOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/simulate-notification][%d] simulatePaymentOrderNotificationOK  %+v", 200, o.ToJSONString())
}

func (o *SimulatePaymentOrderNotificationOK) ToJSONString() string {
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

func (o *SimulatePaymentOrderNotificationOK) GetPayload() *platformclientmodels.NotificationProcessResult {
	return o.Payload
}

func (o *SimulatePaymentOrderNotificationOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.NotificationProcessResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSimulatePaymentOrderNotificationBadRequest creates a SimulatePaymentOrderNotificationBadRequest with default headers values
func NewSimulatePaymentOrderNotificationBadRequest() *SimulatePaymentOrderNotificationBadRequest {
	return &SimulatePaymentOrderNotificationBadRequest{}
}

/*SimulatePaymentOrderNotificationBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33322</td><td>Payment provider [{paymentProvider}] not supported</td></tr></table>
*/
type SimulatePaymentOrderNotificationBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SimulatePaymentOrderNotificationBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/simulate-notification][%d] simulatePaymentOrderNotificationBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SimulatePaymentOrderNotificationBadRequest) ToJSONString() string {
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

func (o *SimulatePaymentOrderNotificationBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SimulatePaymentOrderNotificationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSimulatePaymentOrderNotificationNotFound creates a SimulatePaymentOrderNotificationNotFound with default headers values
func NewSimulatePaymentOrderNotificationNotFound() *SimulatePaymentOrderNotificationNotFound {
	return &SimulatePaymentOrderNotificationNotFound{}
}

/*SimulatePaymentOrderNotificationNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>33141</td><td>Payment Order [{paymentOrderNo}] does not exist</td></tr></table>
*/
type SimulatePaymentOrderNotificationNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *SimulatePaymentOrderNotificationNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/payment/orders/{paymentOrderNo}/simulate-notification][%d] simulatePaymentOrderNotificationNotFound  %+v", 404, o.ToJSONString())
}

func (o *SimulatePaymentOrderNotificationNotFound) ToJSONString() string {
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

func (o *SimulatePaymentOrderNotificationNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SimulatePaymentOrderNotificationNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
