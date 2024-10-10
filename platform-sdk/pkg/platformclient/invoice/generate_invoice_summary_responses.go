// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package invoice

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

// GenerateInvoiceSummaryReader is a Reader for the GenerateInvoiceSummary structure.
type GenerateInvoiceSummaryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GenerateInvoiceSummaryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGenerateInvoiceSummaryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewGenerateInvoiceSummaryUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/invoice/summary returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGenerateInvoiceSummaryOK creates a GenerateInvoiceSummaryOK with default headers values
func NewGenerateInvoiceSummaryOK() *GenerateInvoiceSummaryOK {
	return &GenerateInvoiceSummaryOK{}
}

/*GenerateInvoiceSummaryOK handles this case with default header values.

  successful operation
*/
type GenerateInvoiceSummaryOK struct {
	Payload *platformclientmodels.InvoiceSummary
}

func (o *GenerateInvoiceSummaryOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/invoice/summary][%d] generateInvoiceSummaryOK  %+v", 200, o.ToJSONString())
}

func (o *GenerateInvoiceSummaryOK) ToJSONString() string {
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

func (o *GenerateInvoiceSummaryOK) GetPayload() *platformclientmodels.InvoiceSummary {
	return o.Payload
}

func (o *GenerateInvoiceSummaryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.InvoiceSummary)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGenerateInvoiceSummaryUnprocessableEntity creates a GenerateInvoiceSummaryUnprocessableEntity with default headers values
func NewGenerateInvoiceSummaryUnprocessableEntity() *GenerateInvoiceSummaryUnprocessableEntity {
	return &GenerateInvoiceSummaryUnprocessableEntity{}
}

/*GenerateInvoiceSummaryUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GenerateInvoiceSummaryUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *GenerateInvoiceSummaryUnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/invoice/summary][%d] generateInvoiceSummaryUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *GenerateInvoiceSummaryUnprocessableEntity) ToJSONString() string {
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

func (o *GenerateInvoiceSummaryUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *GenerateInvoiceSummaryUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
