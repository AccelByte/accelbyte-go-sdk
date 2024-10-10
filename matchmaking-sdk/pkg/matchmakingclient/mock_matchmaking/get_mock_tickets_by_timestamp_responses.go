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

// GetMockTicketsByTimestampReader is a Reader for the GetMockTicketsByTimestamp structure.
type GetMockTicketsByTimestampReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetMockTicketsByTimestampReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetMockTicketsByTimestampOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetMockTicketsByTimestampBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetMockTicketsByTimestampUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetMockTicketsByTimestampForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetMockTicketsByTimestampNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetMockTicketsByTimestampInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets/query returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetMockTicketsByTimestampOK creates a GetMockTicketsByTimestampOK with default headers values
func NewGetMockTicketsByTimestampOK() *GetMockTicketsByTimestampOK {
	return &GetMockTicketsByTimestampOK{}
}

/*GetMockTicketsByTimestampOK handles this case with default header values.

  Mock tickets queried
*/
type GetMockTicketsByTimestampOK struct {
	Payload *matchmakingclientmodels.ModelsGetMockTicketsResponse
}

func (o *GetMockTicketsByTimestampOK) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets/query][%d] getMockTicketsByTimestampOK  %+v", 200, o.ToJSONString())
}

func (o *GetMockTicketsByTimestampOK) ToJSONString() string {
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

func (o *GetMockTicketsByTimestampOK) GetPayload() *matchmakingclientmodels.ModelsGetMockTicketsResponse {
	return o.Payload
}

func (o *GetMockTicketsByTimestampOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMockTicketsByTimestampBadRequest creates a GetMockTicketsByTimestampBadRequest with default headers values
func NewGetMockTicketsByTimestampBadRequest() *GetMockTicketsByTimestampBadRequest {
	return &GetMockTicketsByTimestampBadRequest{}
}

/*GetMockTicketsByTimestampBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type GetMockTicketsByTimestampBadRequest struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetMockTicketsByTimestampBadRequest) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets/query][%d] getMockTicketsByTimestampBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetMockTicketsByTimestampBadRequest) ToJSONString() string {
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

func (o *GetMockTicketsByTimestampBadRequest) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetMockTicketsByTimestampBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMockTicketsByTimestampUnauthorized creates a GetMockTicketsByTimestampUnauthorized with default headers values
func NewGetMockTicketsByTimestampUnauthorized() *GetMockTicketsByTimestampUnauthorized {
	return &GetMockTicketsByTimestampUnauthorized{}
}

/*GetMockTicketsByTimestampUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetMockTicketsByTimestampUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetMockTicketsByTimestampUnauthorized) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets/query][%d] getMockTicketsByTimestampUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetMockTicketsByTimestampUnauthorized) ToJSONString() string {
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

func (o *GetMockTicketsByTimestampUnauthorized) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetMockTicketsByTimestampUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMockTicketsByTimestampForbidden creates a GetMockTicketsByTimestampForbidden with default headers values
func NewGetMockTicketsByTimestampForbidden() *GetMockTicketsByTimestampForbidden {
	return &GetMockTicketsByTimestampForbidden{}
}

/*GetMockTicketsByTimestampForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20014</td><td>invalid audience</td></tr><tr><td>20015</td><td>insufficient scope</td></tr></table>
*/
type GetMockTicketsByTimestampForbidden struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetMockTicketsByTimestampForbidden) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets/query][%d] getMockTicketsByTimestampForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetMockTicketsByTimestampForbidden) ToJSONString() string {
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

func (o *GetMockTicketsByTimestampForbidden) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetMockTicketsByTimestampForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMockTicketsByTimestampNotFound creates a GetMockTicketsByTimestampNotFound with default headers values
func NewGetMockTicketsByTimestampNotFound() *GetMockTicketsByTimestampNotFound {
	return &GetMockTicketsByTimestampNotFound{}
}

/*GetMockTicketsByTimestampNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>510110</td><td>channel not found</td></tr></table>
*/
type GetMockTicketsByTimestampNotFound struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetMockTicketsByTimestampNotFound) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets/query][%d] getMockTicketsByTimestampNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetMockTicketsByTimestampNotFound) ToJSONString() string {
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

func (o *GetMockTicketsByTimestampNotFound) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetMockTicketsByTimestampNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetMockTicketsByTimestampInternalServerError creates a GetMockTicketsByTimestampInternalServerError with default headers values
func NewGetMockTicketsByTimestampInternalServerError() *GetMockTicketsByTimestampInternalServerError {
	return &GetMockTicketsByTimestampInternalServerError{}
}

/*GetMockTicketsByTimestampInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetMockTicketsByTimestampInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *GetMockTicketsByTimestampInternalServerError) Error() string {
	return fmt.Sprintf("[POST /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/mocks/tickets/query][%d] getMockTicketsByTimestampInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetMockTicketsByTimestampInternalServerError) ToJSONString() string {
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

func (o *GetMockTicketsByTimestampInternalServerError) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *GetMockTicketsByTimestampInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
