// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ticket

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

// DecreaseTicketSaleReader is a Reader for the DecreaseTicketSale structure.
type DecreaseTicketSaleReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DecreaseTicketSaleReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDecreaseTicketSaleNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDecreaseTicketSaleNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewDecreaseTicketSaleUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/tickets/{boothName}/decrement returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDecreaseTicketSaleNoContent creates a DecreaseTicketSaleNoContent with default headers values
func NewDecreaseTicketSaleNoContent() *DecreaseTicketSaleNoContent {
	return &DecreaseTicketSaleNoContent{}
}

/*DecreaseTicketSaleNoContent handles this case with default header values.

  Return item successfully
*/
type DecreaseTicketSaleNoContent struct {
}

func (o *DecreaseTicketSaleNoContent) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/tickets/{boothName}/decrement][%d] decreaseTicketSaleNoContent ", 204)
}

func (o *DecreaseTicketSaleNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDecreaseTicketSaleNotFound creates a DecreaseTicketSaleNotFound with default headers values
func NewDecreaseTicketSaleNotFound() *DecreaseTicketSaleNotFound {
	return &DecreaseTicketSaleNotFound{}
}

/*DecreaseTicketSaleNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>37041</td><td>Ticket booth [{boothName}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type DecreaseTicketSaleNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DecreaseTicketSaleNotFound) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/tickets/{boothName}/decrement][%d] decreaseTicketSaleNotFound  %+v", 404, o.ToJSONString())
}

func (o *DecreaseTicketSaleNotFound) ToJSONString() string {
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

func (o *DecreaseTicketSaleNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DecreaseTicketSaleNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDecreaseTicketSaleUnprocessableEntity creates a DecreaseTicketSaleUnprocessableEntity with default headers values
func NewDecreaseTicketSaleUnprocessableEntity() *DecreaseTicketSaleUnprocessableEntity {
	return &DecreaseTicketSaleUnprocessableEntity{}
}

/*DecreaseTicketSaleUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type DecreaseTicketSaleUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *DecreaseTicketSaleUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/tickets/{boothName}/decrement][%d] decreaseTicketSaleUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *DecreaseTicketSaleUnprocessableEntity) ToJSONString() string {
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

func (o *DecreaseTicketSaleUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *DecreaseTicketSaleUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
