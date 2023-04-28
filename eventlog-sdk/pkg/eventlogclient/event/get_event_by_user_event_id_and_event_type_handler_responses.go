// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package event

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclientmodels"
)

// GetEventByUserEventIDAndEventTypeHandlerReader is a Reader for the GetEventByUserEventIDAndEventTypeHandler structure.
type GetEventByUserEventIDAndEventTypeHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetEventByUserEventIDAndEventTypeHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetEventByUserEventIDAndEventTypeHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetEventByUserEventIDAndEventTypeHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetEventByUserEventIDAndEventTypeHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetEventByUserEventIDAndEventTypeHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetEventByUserEventIDAndEventTypeHandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetEventByUserEventIDAndEventTypeHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /event/namespaces/{namespace}/users/{userId}/eventType/{eventType}/eventId/{eventId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetEventByUserEventIDAndEventTypeHandlerOK creates a GetEventByUserEventIDAndEventTypeHandlerOK with default headers values
func NewGetEventByUserEventIDAndEventTypeHandlerOK() *GetEventByUserEventIDAndEventTypeHandlerOK {
	return &GetEventByUserEventIDAndEventTypeHandlerOK{}
}

/*GetEventByUserEventIDAndEventTypeHandlerOK handles this case with default header values.

  OK
*/
type GetEventByUserEventIDAndEventTypeHandlerOK struct {
	Payload *eventlogclientmodels.ModelsEventResponse
}

func (o *GetEventByUserEventIDAndEventTypeHandlerOK) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/eventType/{eventType}/eventId/{eventId}][%d] getEventByUserEventIdAndEventTypeHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *GetEventByUserEventIDAndEventTypeHandlerOK) ToJSONString() string {
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

func (o *GetEventByUserEventIDAndEventTypeHandlerOK) GetPayload() *eventlogclientmodels.ModelsEventResponse {
	return o.Payload
}

func (o *GetEventByUserEventIDAndEventTypeHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(eventlogclientmodels.ModelsEventResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetEventByUserEventIDAndEventTypeHandlerBadRequest creates a GetEventByUserEventIDAndEventTypeHandlerBadRequest with default headers values
func NewGetEventByUserEventIDAndEventTypeHandlerBadRequest() *GetEventByUserEventIDAndEventTypeHandlerBadRequest {
	return &GetEventByUserEventIDAndEventTypeHandlerBadRequest{}
}

/*GetEventByUserEventIDAndEventTypeHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type GetEventByUserEventIDAndEventTypeHandlerBadRequest struct {
}

func (o *GetEventByUserEventIDAndEventTypeHandlerBadRequest) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/eventType/{eventType}/eventId/{eventId}][%d] getEventByUserEventIdAndEventTypeHandlerBadRequest ", 400)
}

func (o *GetEventByUserEventIDAndEventTypeHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByUserEventIDAndEventTypeHandlerUnauthorized creates a GetEventByUserEventIDAndEventTypeHandlerUnauthorized with default headers values
func NewGetEventByUserEventIDAndEventTypeHandlerUnauthorized() *GetEventByUserEventIDAndEventTypeHandlerUnauthorized {
	return &GetEventByUserEventIDAndEventTypeHandlerUnauthorized{}
}

/*GetEventByUserEventIDAndEventTypeHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetEventByUserEventIDAndEventTypeHandlerUnauthorized struct {
}

func (o *GetEventByUserEventIDAndEventTypeHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/eventType/{eventType}/eventId/{eventId}][%d] getEventByUserEventIdAndEventTypeHandlerUnauthorized ", 401)
}

func (o *GetEventByUserEventIDAndEventTypeHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByUserEventIDAndEventTypeHandlerForbidden creates a GetEventByUserEventIDAndEventTypeHandlerForbidden with default headers values
func NewGetEventByUserEventIDAndEventTypeHandlerForbidden() *GetEventByUserEventIDAndEventTypeHandlerForbidden {
	return &GetEventByUserEventIDAndEventTypeHandlerForbidden{}
}

/*GetEventByUserEventIDAndEventTypeHandlerForbidden handles this case with default header values.

  Forbidden
*/
type GetEventByUserEventIDAndEventTypeHandlerForbidden struct {
}

func (o *GetEventByUserEventIDAndEventTypeHandlerForbidden) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/eventType/{eventType}/eventId/{eventId}][%d] getEventByUserEventIdAndEventTypeHandlerForbidden ", 403)
}

func (o *GetEventByUserEventIDAndEventTypeHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByUserEventIDAndEventTypeHandlerNotFound creates a GetEventByUserEventIDAndEventTypeHandlerNotFound with default headers values
func NewGetEventByUserEventIDAndEventTypeHandlerNotFound() *GetEventByUserEventIDAndEventTypeHandlerNotFound {
	return &GetEventByUserEventIDAndEventTypeHandlerNotFound{}
}

/*GetEventByUserEventIDAndEventTypeHandlerNotFound handles this case with default header values.

  Not Found
*/
type GetEventByUserEventIDAndEventTypeHandlerNotFound struct {
}

func (o *GetEventByUserEventIDAndEventTypeHandlerNotFound) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/eventType/{eventType}/eventId/{eventId}][%d] getEventByUserEventIdAndEventTypeHandlerNotFound ", 404)
}

func (o *GetEventByUserEventIDAndEventTypeHandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByUserEventIDAndEventTypeHandlerInternalServerError creates a GetEventByUserEventIDAndEventTypeHandlerInternalServerError with default headers values
func NewGetEventByUserEventIDAndEventTypeHandlerInternalServerError() *GetEventByUserEventIDAndEventTypeHandlerInternalServerError {
	return &GetEventByUserEventIDAndEventTypeHandlerInternalServerError{}
}

/*GetEventByUserEventIDAndEventTypeHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetEventByUserEventIDAndEventTypeHandlerInternalServerError struct {
}

func (o *GetEventByUserEventIDAndEventTypeHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/eventType/{eventType}/eventId/{eventId}][%d] getEventByUserEventIdAndEventTypeHandlerInternalServerError ", 500)
}

func (o *GetEventByUserEventIDAndEventTypeHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
