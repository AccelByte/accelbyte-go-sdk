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

// GetTicketDetailReader is a Reader for the GetTicketDetail structure.
type GetTicketDetailReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetTicketDetailReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetTicketDetailOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetTicketDetailNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetTicketDetailInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetTicketDetailOK creates a GetTicketDetailOK with default headers values
func NewGetTicketDetailOK() *GetTicketDetailOK {
	return &GetTicketDetailOK{}
}

/*GetTicketDetailOK handles this case with default header values.


 */
type GetTicketDetailOK struct {
	Payload *reportingclientmodels.RestapiTicketResponse
}

func (o *GetTicketDetailOK) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}][%d] getTicketDetailOK  %+v", 200, o.ToJSONString())
}

func (o *GetTicketDetailOK) ToJSONString() string {
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

func (o *GetTicketDetailOK) GetPayload() *reportingclientmodels.RestapiTicketResponse {
	return o.Payload
}

func (o *GetTicketDetailOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiTicketResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetTicketDetailNotFound creates a GetTicketDetailNotFound with default headers values
func NewGetTicketDetailNotFound() *GetTicketDetailNotFound {
	return &GetTicketDetailNotFound{}
}

/*GetTicketDetailNotFound handles this case with default header values.


 */
type GetTicketDetailNotFound struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *GetTicketDetailNotFound) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}][%d] getTicketDetailNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetTicketDetailNotFound) ToJSONString() string {
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

func (o *GetTicketDetailNotFound) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *GetTicketDetailNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetTicketDetailInternalServerError creates a GetTicketDetailInternalServerError with default headers values
func NewGetTicketDetailInternalServerError() *GetTicketDetailInternalServerError {
	return &GetTicketDetailInternalServerError{}
}

/*GetTicketDetailInternalServerError handles this case with default header values.


 */
type GetTicketDetailInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *GetTicketDetailInternalServerError) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}][%d] getTicketDetailInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetTicketDetailInternalServerError) ToJSONString() string {
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

func (o *GetTicketDetailInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *GetTicketDetailInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
