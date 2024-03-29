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

// GetEventByEventTypeAndEventIDHandlerReader is a Reader for the GetEventByEventTypeAndEventIDHandler structure.
type GetEventByEventTypeAndEventIDHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetEventByEventTypeAndEventIDHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetEventByEventTypeAndEventIDHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetEventByEventTypeAndEventIDHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetEventByEventTypeAndEventIDHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetEventByEventTypeAndEventIDHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetEventByEventTypeAndEventIDHandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetEventByEventTypeAndEventIDHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /event/namespaces/{namespace}/eventType/{eventType}/eventId/{eventId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetEventByEventTypeAndEventIDHandlerOK creates a GetEventByEventTypeAndEventIDHandlerOK with default headers values
func NewGetEventByEventTypeAndEventIDHandlerOK() *GetEventByEventTypeAndEventIDHandlerOK {
	return &GetEventByEventTypeAndEventIDHandlerOK{}
}

/*GetEventByEventTypeAndEventIDHandlerOK handles this case with default header values.

  OK
*/
type GetEventByEventTypeAndEventIDHandlerOK struct {
	Payload *eventlogclientmodels.ModelsEventResponse
}

func (o *GetEventByEventTypeAndEventIDHandlerOK) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/eventType/{eventType}/eventId/{eventId}][%d] getEventByEventTypeAndEventIdHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *GetEventByEventTypeAndEventIDHandlerOK) ToJSONString() string {
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

func (o *GetEventByEventTypeAndEventIDHandlerOK) GetPayload() *eventlogclientmodels.ModelsEventResponse {
	return o.Payload
}

func (o *GetEventByEventTypeAndEventIDHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetEventByEventTypeAndEventIDHandlerBadRequest creates a GetEventByEventTypeAndEventIDHandlerBadRequest with default headers values
func NewGetEventByEventTypeAndEventIDHandlerBadRequest() *GetEventByEventTypeAndEventIDHandlerBadRequest {
	return &GetEventByEventTypeAndEventIDHandlerBadRequest{}
}

/*GetEventByEventTypeAndEventIDHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type GetEventByEventTypeAndEventIDHandlerBadRequest struct {
}

func (o *GetEventByEventTypeAndEventIDHandlerBadRequest) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/eventType/{eventType}/eventId/{eventId}][%d] getEventByEventTypeAndEventIdHandlerBadRequest ", 400)
}

func (o *GetEventByEventTypeAndEventIDHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByEventTypeAndEventIDHandlerUnauthorized creates a GetEventByEventTypeAndEventIDHandlerUnauthorized with default headers values
func NewGetEventByEventTypeAndEventIDHandlerUnauthorized() *GetEventByEventTypeAndEventIDHandlerUnauthorized {
	return &GetEventByEventTypeAndEventIDHandlerUnauthorized{}
}

/*GetEventByEventTypeAndEventIDHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetEventByEventTypeAndEventIDHandlerUnauthorized struct {
}

func (o *GetEventByEventTypeAndEventIDHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/eventType/{eventType}/eventId/{eventId}][%d] getEventByEventTypeAndEventIdHandlerUnauthorized ", 401)
}

func (o *GetEventByEventTypeAndEventIDHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByEventTypeAndEventIDHandlerForbidden creates a GetEventByEventTypeAndEventIDHandlerForbidden with default headers values
func NewGetEventByEventTypeAndEventIDHandlerForbidden() *GetEventByEventTypeAndEventIDHandlerForbidden {
	return &GetEventByEventTypeAndEventIDHandlerForbidden{}
}

/*GetEventByEventTypeAndEventIDHandlerForbidden handles this case with default header values.

  Forbidden
*/
type GetEventByEventTypeAndEventIDHandlerForbidden struct {
}

func (o *GetEventByEventTypeAndEventIDHandlerForbidden) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/eventType/{eventType}/eventId/{eventId}][%d] getEventByEventTypeAndEventIdHandlerForbidden ", 403)
}

func (o *GetEventByEventTypeAndEventIDHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByEventTypeAndEventIDHandlerNotFound creates a GetEventByEventTypeAndEventIDHandlerNotFound with default headers values
func NewGetEventByEventTypeAndEventIDHandlerNotFound() *GetEventByEventTypeAndEventIDHandlerNotFound {
	return &GetEventByEventTypeAndEventIDHandlerNotFound{}
}

/*GetEventByEventTypeAndEventIDHandlerNotFound handles this case with default header values.

  Not Found
*/
type GetEventByEventTypeAndEventIDHandlerNotFound struct {
}

func (o *GetEventByEventTypeAndEventIDHandlerNotFound) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/eventType/{eventType}/eventId/{eventId}][%d] getEventByEventTypeAndEventIdHandlerNotFound ", 404)
}

func (o *GetEventByEventTypeAndEventIDHandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByEventTypeAndEventIDHandlerInternalServerError creates a GetEventByEventTypeAndEventIDHandlerInternalServerError with default headers values
func NewGetEventByEventTypeAndEventIDHandlerInternalServerError() *GetEventByEventTypeAndEventIDHandlerInternalServerError {
	return &GetEventByEventTypeAndEventIDHandlerInternalServerError{}
}

/*GetEventByEventTypeAndEventIDHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetEventByEventTypeAndEventIDHandlerInternalServerError struct {
}

func (o *GetEventByEventTypeAndEventIDHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/eventType/{eventType}/eventId/{eventId}][%d] getEventByEventTypeAndEventIdHandlerInternalServerError ", 500)
}

func (o *GetEventByEventTypeAndEventIDHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
