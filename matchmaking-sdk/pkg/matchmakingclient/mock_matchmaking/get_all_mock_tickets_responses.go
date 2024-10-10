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

// GetAllMockTicketsReader is a Reader for the GetAllMockTickets structure.
type GetAllMockTicketsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAllMockTicketsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAllMockTicketsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetAllMockTicketsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetAllMockTicketsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetAllMockTicketsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetAllMockTicketsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetAllMockTicketsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAllMockTicketsOK creates a GetAllMockTicketsOK with default headers values
func NewGetAllMockTicketsOK() *GetAllMockTicketsOK {
	return &GetAllMockTicketsOK{}
}

/*GetAllMockTicketsOK handles this case with default header values.

  Mock tickets queried
*/
type GetAllMockTicketsOK struct {
	Payload *matchmakingclientmodels.ModelsGetMockTicketsResponse
}

func (o *GetAllMockTicketsOK) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets][%d] getAllMockTicketsOK  %+v", 200, o.ToJSONString())
}

func (o *GetAllMockTicketsOK) ToJSONString() string {
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

func (o *GetAllMockTicketsOK) GetPayload() *matchmakingclientmodels.ModelsGetMockTicketsResponse {
	return o.Payload
}

func (o *GetAllMockTicketsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ModelsGetMockTicketsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAllMockTicketsBadRequest creates a GetAllMockTicketsBadRequest with default headers values
func NewGetAllMockTicketsBadRequest() *GetAllMockTicketsBadRequest {
	return &GetAllMockTicketsBadRequest{}
}

/*GetAllMockTicketsBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type GetAllMockTicketsBadRequest struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetAllMockTicketsBadRequest) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets][%d] getAllMockTicketsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetAllMockTicketsBadRequest) ToJSONString() string {
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

func (o *GetAllMockTicketsBadRequest) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetAllMockTicketsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAllMockTicketsUnauthorized creates a GetAllMockTicketsUnauthorized with default headers values
func NewGetAllMockTicketsUnauthorized() *GetAllMockTicketsUnauthorized {
	return &GetAllMockTicketsUnauthorized{}
}

/*GetAllMockTicketsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetAllMockTicketsUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetAllMockTicketsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets][%d] getAllMockTicketsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetAllMockTicketsUnauthorized) ToJSONString() string {
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

func (o *GetAllMockTicketsUnauthorized) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetAllMockTicketsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAllMockTicketsForbidden creates a GetAllMockTicketsForbidden with default headers values
func NewGetAllMockTicketsForbidden() *GetAllMockTicketsForbidden {
	return &GetAllMockTicketsForbidden{}
}

/*GetAllMockTicketsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20014</td><td>invalid audience</td></tr><tr><td>20015</td><td>insufficient scope</td></tr></table>
*/
type GetAllMockTicketsForbidden struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetAllMockTicketsForbidden) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets][%d] getAllMockTicketsForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetAllMockTicketsForbidden) ToJSONString() string {
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

func (o *GetAllMockTicketsForbidden) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetAllMockTicketsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAllMockTicketsNotFound creates a GetAllMockTicketsNotFound with default headers values
func NewGetAllMockTicketsNotFound() *GetAllMockTicketsNotFound {
	return &GetAllMockTicketsNotFound{}
}

/*GetAllMockTicketsNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>510110</td><td>channel not found</td></tr></table>
*/
type GetAllMockTicketsNotFound struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetAllMockTicketsNotFound) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets][%d] getAllMockTicketsNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetAllMockTicketsNotFound) ToJSONString() string {
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

func (o *GetAllMockTicketsNotFound) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetAllMockTicketsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAllMockTicketsInternalServerError creates a GetAllMockTicketsInternalServerError with default headers values
func NewGetAllMockTicketsInternalServerError() *GetAllMockTicketsInternalServerError {
	return &GetAllMockTicketsInternalServerError{}
}

/*GetAllMockTicketsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetAllMockTicketsInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetAllMockTicketsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets][%d] getAllMockTicketsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetAllMockTicketsInternalServerError) ToJSONString() string {
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

func (o *GetAllMockTicketsInternalServerError) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetAllMockTicketsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
