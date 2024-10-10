// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package order

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

// DownloadUserOrderReceiptReader is a Reader for the DownloadUserOrderReceipt structure.
type DownloadUserOrderReceiptReader struct {
	formats strfmt.Registry
	writer  io.Writer
}

// ReadResponse reads a server response into the received o.
func (o *DownloadUserOrderReceiptReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDownloadUserOrderReceiptOK(o.writer)
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDownloadUserOrderReceiptNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewDownloadUserOrderReceiptConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/receipt.pdf returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDownloadUserOrderReceiptOK creates a DownloadUserOrderReceiptOK with default headers values
func NewDownloadUserOrderReceiptOK(writer io.Writer) *DownloadUserOrderReceiptOK {
	return &DownloadUserOrderReceiptOK{
		Payload: writer,
	}
}

/*DownloadUserOrderReceiptOK handles this case with default header values.

  Successful operation
*/
type DownloadUserOrderReceiptOK struct {
	Payload io.Writer
}

func (o *DownloadUserOrderReceiptOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/receipt.pdf][%d] downloadUserOrderReceiptOK  %+v", 200, o.ToJSONString())
}

func (o *DownloadUserOrderReceiptOK) ToJSONString() string {
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

func (o *DownloadUserOrderReceiptOK) GetPayload() io.Writer {
	return o.Payload
}

func (o *DownloadUserOrderReceiptOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDownloadUserOrderReceiptNotFound creates a DownloadUserOrderReceiptNotFound with default headers values
func NewDownloadUserOrderReceiptNotFound() *DownloadUserOrderReceiptNotFound {
	return &DownloadUserOrderReceiptNotFound{}
}

/*DownloadUserOrderReceiptNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>32141</td><td>Order [{orderNo}] does not exist</td></tr></table>
*/
type DownloadUserOrderReceiptNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DownloadUserOrderReceiptNotFound) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/receipt.pdf][%d] downloadUserOrderReceiptNotFound  %+v", 404, o.ToJSONString())
}

func (o *DownloadUserOrderReceiptNotFound) ToJSONString() string {
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

func (o *DownloadUserOrderReceiptNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DownloadUserOrderReceiptNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDownloadUserOrderReceiptConflict creates a DownloadUserOrderReceiptConflict with default headers values
func NewDownloadUserOrderReceiptConflict() *DownloadUserOrderReceiptConflict {
	return &DownloadUserOrderReceiptConflict{}
}

/*DownloadUserOrderReceiptConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>32173</td><td>Receipt of order [{orderNo}] is not downloadable</td></tr></table>
*/
type DownloadUserOrderReceiptConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DownloadUserOrderReceiptConflict) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/users/{userId}/orders/{orderNo}/receipt.pdf][%d] downloadUserOrderReceiptConflict  %+v", 409, o.ToJSONString())
}

func (o *DownloadUserOrderReceiptConflict) ToJSONString() string {
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

func (o *DownloadUserOrderReceiptConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DownloadUserOrderReceiptConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
