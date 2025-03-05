// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

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

// AdminRefundIAPOrderReader is a Reader for the AdminRefundIAPOrder structure.
type AdminRefundIAPOrderReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminRefundIAPOrderReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminRefundIAPOrderOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 204:
		result := NewAdminRefundIAPOrderNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminRefundIAPOrderBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminRefundIAPOrderNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminRefundIAPOrderConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/iap/steam/orders/{iapOrderNo}/refund returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminRefundIAPOrderOK creates a AdminRefundIAPOrderOK with default headers values
func NewAdminRefundIAPOrderOK() *AdminRefundIAPOrderOK {
	return &AdminRefundIAPOrderOK{}
}

/*AdminRefundIAPOrderOK handles this case with default header values.

  successful operation
*/
type AdminRefundIAPOrderOK struct {
	Payload *platformclientmodels.IAPOrderInfo
}

func (o *AdminRefundIAPOrderOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/iap/steam/orders/{iapOrderNo}/refund][%d] adminRefundIapOrderOK  %+v", 200, o.ToJSONString())
}

func (o *AdminRefundIAPOrderOK) ToJSONString() string {
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

func (o *AdminRefundIAPOrderOK) GetPayload() *platformclientmodels.IAPOrderInfo {
	return o.Payload
}

func (o *AdminRefundIAPOrderOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.IAPOrderInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminRefundIAPOrderNoContent creates a AdminRefundIAPOrderNoContent with default headers values
func NewAdminRefundIAPOrderNoContent() *AdminRefundIAPOrderNoContent {
	return &AdminRefundIAPOrderNoContent{}
}

/*AdminRefundIAPOrderNoContent handles this case with default header values.

  Refund IAP Order successfully
*/
type AdminRefundIAPOrderNoContent struct {
}

func (o *AdminRefundIAPOrderNoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/iap/steam/orders/{iapOrderNo}/refund][%d] adminRefundIapOrderNoContent ", 204)
}

func (o *AdminRefundIAPOrderNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminRefundIAPOrderBadRequest creates a AdminRefundIAPOrderBadRequest with default headers values
func NewAdminRefundIAPOrderBadRequest() *AdminRefundIAPOrderBadRequest {
	return &AdminRefundIAPOrderBadRequest{}
}

/*AdminRefundIAPOrderBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39124</td><td>IAP request platform [{platformId}] user id is not linked with current user</td></tr></table>
*/
type AdminRefundIAPOrderBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *AdminRefundIAPOrderBadRequest) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/iap/steam/orders/{iapOrderNo}/refund][%d] adminRefundIapOrderBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminRefundIAPOrderBadRequest) ToJSONString() string {
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

func (o *AdminRefundIAPOrderBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AdminRefundIAPOrderBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminRefundIAPOrderNotFound creates a AdminRefundIAPOrderNotFound with default headers values
func NewAdminRefundIAPOrderNotFound() *AdminRefundIAPOrderNotFound {
	return &AdminRefundIAPOrderNotFound{}
}

/*AdminRefundIAPOrderNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39144</td><td>Steam IAP config not found in namespace [{namespace}].</td></tr><tr><td>39151</td><td>IAP order no [{iapOrderNo}] not found in namespace [{namespace}].</td></tr></table>
*/
type AdminRefundIAPOrderNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *AdminRefundIAPOrderNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/iap/steam/orders/{iapOrderNo}/refund][%d] adminRefundIapOrderNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminRefundIAPOrderNotFound) ToJSONString() string {
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

func (o *AdminRefundIAPOrderNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AdminRefundIAPOrderNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminRefundIAPOrderConflict creates a AdminRefundIAPOrderConflict with default headers values
func NewAdminRefundIAPOrderConflict() *AdminRefundIAPOrderConflict {
	return &AdminRefundIAPOrderConflict{}
}

/*AdminRefundIAPOrderConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>39184</td><td>Steam api exception with status code [{statusCode}] and error message [{message}]</td></tr><tr><td>39185</td><td>This endpoint only works on sync mode [{workSyncMode}], but current steam iap config sync mode is [{currentSyncMode}] under namespace [{namespace}]</td></tr></table>
*/
type AdminRefundIAPOrderConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *AdminRefundIAPOrderConflict) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/iap/steam/orders/{iapOrderNo}/refund][%d] adminRefundIapOrderConflict  %+v", 409, o.ToJSONString())
}

func (o *AdminRefundIAPOrderConflict) ToJSONString() string {
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

func (o *AdminRefundIAPOrderConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AdminRefundIAPOrderConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
