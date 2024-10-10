// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_tickets

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
)

// TicketStatisticReader is a Reader for the TicketStatistic structure.
type TicketStatisticReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *TicketStatisticReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewTicketStatisticOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewTicketStatisticInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /reporting/v1/admin/namespaces/{namespace}/tickets/statistic returns an error %d: %s", response.Code(), string(data))
	}
}

// NewTicketStatisticOK creates a TicketStatisticOK with default headers values
func NewTicketStatisticOK() *TicketStatisticOK {
	return &TicketStatisticOK{}
}

/*TicketStatisticOK handles this case with default header values.


 */
type TicketStatisticOK struct {
	Payload *reportingclientmodels.RestapiTicketStatisticResponse
}

func (o *TicketStatisticOK) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/tickets/statistic][%d] ticketStatisticOK  %+v", 200, o.ToJSONString())
}

func (o *TicketStatisticOK) ToJSONString() string {
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

func (o *TicketStatisticOK) GetPayload() *reportingclientmodels.RestapiTicketStatisticResponse {
	return o.Payload
}

func (o *TicketStatisticOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiTicketStatisticResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewTicketStatisticInternalServerError creates a TicketStatisticInternalServerError with default headers values
func NewTicketStatisticInternalServerError() *TicketStatisticInternalServerError {
	return &TicketStatisticInternalServerError{}
}

/*TicketStatisticInternalServerError handles this case with default header values.


 */
type TicketStatisticInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *TicketStatisticInternalServerError) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/tickets/statistic][%d] ticketStatisticInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *TicketStatisticInternalServerError) ToJSONString() string {
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

func (o *TicketStatisticInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *TicketStatisticInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
