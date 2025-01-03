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

// AcquireUserTicketReader is a Reader for the AcquireUserTicket structure.
type AcquireUserTicketReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AcquireUserTicketReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAcquireUserTicketOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAcquireUserTicketNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAcquireUserTicketConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewAcquireUserTicketUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/admin/namespaces/{namespace}/users/{userId}/tickets/{boothName} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAcquireUserTicketOK creates a AcquireUserTicketOK with default headers values
func NewAcquireUserTicketOK() *AcquireUserTicketOK {
	return &AcquireUserTicketOK{}
}

/*AcquireUserTicketOK handles this case with default header values.

  successful operation
*/
type AcquireUserTicketOK struct {
	Payload *platformclientmodels.TicketAcquireResult
}

func (o *AcquireUserTicketOK) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/tickets/{boothName}][%d] acquireUserTicketOK  %+v", 200, o.ToJSONString())
}

func (o *AcquireUserTicketOK) ToJSONString() string {
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

func (o *AcquireUserTicketOK) GetPayload() *platformclientmodels.TicketAcquireResult {
	return o.Payload
}

func (o *AcquireUserTicketOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.TicketAcquireResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAcquireUserTicketNotFound creates a AcquireUserTicketNotFound with default headers values
func NewAcquireUserTicketNotFound() *AcquireUserTicketNotFound {
	return &AcquireUserTicketNotFound{}
}

/*AcquireUserTicketNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>37041</td><td>Ticket booth [{boothName}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type AcquireUserTicketNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *AcquireUserTicketNotFound) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/tickets/{boothName}][%d] acquireUserTicketNotFound  %+v", 404, o.ToJSONString())
}

func (o *AcquireUserTicketNotFound) ToJSONString() string {
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

func (o *AcquireUserTicketNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AcquireUserTicketNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAcquireUserTicketConflict creates a AcquireUserTicketConflict with default headers values
func NewAcquireUserTicketConflict() *AcquireUserTicketConflict {
	return &AcquireUserTicketConflict{}
}

/*AcquireUserTicketConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>37071</td><td>Insufficient ticket in booth [{boothName}] in namespace [{namespace}]</td></tr></table>
*/
type AcquireUserTicketConflict struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *AcquireUserTicketConflict) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/tickets/{boothName}][%d] acquireUserTicketConflict  %+v", 409, o.ToJSONString())
}

func (o *AcquireUserTicketConflict) ToJSONString() string {
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

func (o *AcquireUserTicketConflict) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *AcquireUserTicketConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAcquireUserTicketUnprocessableEntity creates a AcquireUserTicketUnprocessableEntity with default headers values
func NewAcquireUserTicketUnprocessableEntity() *AcquireUserTicketUnprocessableEntity {
	return &AcquireUserTicketUnprocessableEntity{}
}

/*AcquireUserTicketUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AcquireUserTicketUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *AcquireUserTicketUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /platform/admin/namespaces/{namespace}/users/{userId}/tickets/{boothName}][%d] acquireUserTicketUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *AcquireUserTicketUnprocessableEntity) ToJSONString() string {
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

func (o *AcquireUserTicketUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *AcquireUserTicketUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
