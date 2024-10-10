// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package mock_matchmaking

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
)

// BulkCreateMockTicketsReader is a Reader for the BulkCreateMockTickets structure.
type BulkCreateMockTicketsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkCreateMockTicketsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewBulkCreateMockTicketsCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkCreateMockTicketsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkCreateMockTicketsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkCreateMockTicketsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewBulkCreateMockTicketsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkCreateMockTicketsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkCreateMockTicketsCreated creates a BulkCreateMockTicketsCreated with default headers values
func NewBulkCreateMockTicketsCreated() *BulkCreateMockTicketsCreated {
	return &BulkCreateMockTicketsCreated{}
}

/*BulkCreateMockTicketsCreated handles this case with default header values.

  Mock tickets created
*/
type BulkCreateMockTicketsCreated struct {
}

func (o *BulkCreateMockTicketsCreated) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets/bulk][%d] bulkCreateMockTicketsCreated ", 201)
}

func (o *BulkCreateMockTicketsCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewBulkCreateMockTicketsBadRequest creates a BulkCreateMockTicketsBadRequest with default headers values
func NewBulkCreateMockTicketsBadRequest() *BulkCreateMockTicketsBadRequest {
	return &BulkCreateMockTicketsBadRequest{}
}

/*BulkCreateMockTicketsBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type BulkCreateMockTicketsBadRequest struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *BulkCreateMockTicketsBadRequest) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets/bulk][%d] bulkCreateMockTicketsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkCreateMockTicketsBadRequest) ToJSONString() string {
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

func (o *BulkCreateMockTicketsBadRequest) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *BulkCreateMockTicketsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkCreateMockTicketsUnauthorized creates a BulkCreateMockTicketsUnauthorized with default headers values
func NewBulkCreateMockTicketsUnauthorized() *BulkCreateMockTicketsUnauthorized {
	return &BulkCreateMockTicketsUnauthorized{}
}

/*BulkCreateMockTicketsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type BulkCreateMockTicketsUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *BulkCreateMockTicketsUnauthorized) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets/bulk][%d] bulkCreateMockTicketsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkCreateMockTicketsUnauthorized) ToJSONString() string {
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

func (o *BulkCreateMockTicketsUnauthorized) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *BulkCreateMockTicketsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkCreateMockTicketsForbidden creates a BulkCreateMockTicketsForbidden with default headers values
func NewBulkCreateMockTicketsForbidden() *BulkCreateMockTicketsForbidden {
	return &BulkCreateMockTicketsForbidden{}
}

/*BulkCreateMockTicketsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20014</td><td>invalid audience</td></tr><tr><td>20015</td><td>insufficient scope</td></tr></table>
*/
type BulkCreateMockTicketsForbidden struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *BulkCreateMockTicketsForbidden) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets/bulk][%d] bulkCreateMockTicketsForbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkCreateMockTicketsForbidden) ToJSONString() string {
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

func (o *BulkCreateMockTicketsForbidden) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *BulkCreateMockTicketsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkCreateMockTicketsNotFound creates a BulkCreateMockTicketsNotFound with default headers values
func NewBulkCreateMockTicketsNotFound() *BulkCreateMockTicketsNotFound {
	return &BulkCreateMockTicketsNotFound{}
}

/*BulkCreateMockTicketsNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>510110</td><td>channel not found</td></tr></table>
*/
type BulkCreateMockTicketsNotFound struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *BulkCreateMockTicketsNotFound) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets/bulk][%d] bulkCreateMockTicketsNotFound  %+v", 404, o.ToJSONString())
}

func (o *BulkCreateMockTicketsNotFound) ToJSONString() string {
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

func (o *BulkCreateMockTicketsNotFound) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *BulkCreateMockTicketsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkCreateMockTicketsInternalServerError creates a BulkCreateMockTicketsInternalServerError with default headers values
func NewBulkCreateMockTicketsInternalServerError() *BulkCreateMockTicketsInternalServerError {
	return &BulkCreateMockTicketsInternalServerError{}
}

/*BulkCreateMockTicketsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type BulkCreateMockTicketsInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *BulkCreateMockTicketsInternalServerError) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets/bulk][%d] bulkCreateMockTicketsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkCreateMockTicketsInternalServerError) ToJSONString() string {
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

func (o *BulkCreateMockTicketsInternalServerError) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *BulkCreateMockTicketsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
