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

// GetReportsByTicketReader is a Reader for the GetReportsByTicket structure.
type GetReportsByTicketReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetReportsByTicketReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetReportsByTicketOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetReportsByTicketInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}/reports returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetReportsByTicketOK creates a GetReportsByTicketOK with default headers values
func NewGetReportsByTicketOK() *GetReportsByTicketOK {
	return &GetReportsByTicketOK{}
}

/*GetReportsByTicketOK handles this case with default header values.


 */
type GetReportsByTicketOK struct {
	Payload *reportingclientmodels.RestapiReportListResponse
}

func (o *GetReportsByTicketOK) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}/reports][%d] getReportsByTicketOK  %+v", 200, o.ToJSONString())
}

func (o *GetReportsByTicketOK) ToJSONString() string {
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

func (o *GetReportsByTicketOK) GetPayload() *reportingclientmodels.RestapiReportListResponse {
	return o.Payload
}

func (o *GetReportsByTicketOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiReportListResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetReportsByTicketInternalServerError creates a GetReportsByTicketInternalServerError with default headers values
func NewGetReportsByTicketInternalServerError() *GetReportsByTicketInternalServerError {
	return &GetReportsByTicketInternalServerError{}
}

/*GetReportsByTicketInternalServerError handles this case with default header values.


 */
type GetReportsByTicketInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *GetReportsByTicketInternalServerError) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}/reports][%d] getReportsByTicketInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetReportsByTicketInternalServerError) ToJSONString() string {
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

func (o *GetReportsByTicketInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *GetReportsByTicketInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
