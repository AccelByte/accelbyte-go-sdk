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

// GetEventByEventIDHandlerReader is a Reader for the GetEventByEventIDHandler structure.
type GetEventByEventIDHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetEventByEventIDHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetEventByEventIDHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetEventByEventIDHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetEventByEventIDHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetEventByEventIDHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetEventByEventIDHandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetEventByEventIDHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /event/namespaces/{namespace}/eventId/{eventId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetEventByEventIDHandlerOK creates a GetEventByEventIDHandlerOK with default headers values
func NewGetEventByEventIDHandlerOK() *GetEventByEventIDHandlerOK {
	return &GetEventByEventIDHandlerOK{}
}

/*GetEventByEventIDHandlerOK handles this case with default header values.

  OK
*/
type GetEventByEventIDHandlerOK struct {
	Payload *eventlogclientmodels.ModelsEventResponse
}

func (o *GetEventByEventIDHandlerOK) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/eventId/{eventId}][%d] getEventByEventIdHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *GetEventByEventIDHandlerOK) ToJSONString() string {
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

func (o *GetEventByEventIDHandlerOK) GetPayload() *eventlogclientmodels.ModelsEventResponse {
	return o.Payload
}

func (o *GetEventByEventIDHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetEventByEventIDHandlerBadRequest creates a GetEventByEventIDHandlerBadRequest with default headers values
func NewGetEventByEventIDHandlerBadRequest() *GetEventByEventIDHandlerBadRequest {
	return &GetEventByEventIDHandlerBadRequest{}
}

/*GetEventByEventIDHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type GetEventByEventIDHandlerBadRequest struct {
}

func (o *GetEventByEventIDHandlerBadRequest) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/eventId/{eventId}][%d] getEventByEventIdHandlerBadRequest ", 400)
}

func (o *GetEventByEventIDHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByEventIDHandlerUnauthorized creates a GetEventByEventIDHandlerUnauthorized with default headers values
func NewGetEventByEventIDHandlerUnauthorized() *GetEventByEventIDHandlerUnauthorized {
	return &GetEventByEventIDHandlerUnauthorized{}
}

/*GetEventByEventIDHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetEventByEventIDHandlerUnauthorized struct {
}

func (o *GetEventByEventIDHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/eventId/{eventId}][%d] getEventByEventIdHandlerUnauthorized ", 401)
}

func (o *GetEventByEventIDHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByEventIDHandlerForbidden creates a GetEventByEventIDHandlerForbidden with default headers values
func NewGetEventByEventIDHandlerForbidden() *GetEventByEventIDHandlerForbidden {
	return &GetEventByEventIDHandlerForbidden{}
}

/*GetEventByEventIDHandlerForbidden handles this case with default header values.

  Forbidden
*/
type GetEventByEventIDHandlerForbidden struct {
}

func (o *GetEventByEventIDHandlerForbidden) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/eventId/{eventId}][%d] getEventByEventIdHandlerForbidden ", 403)
}

func (o *GetEventByEventIDHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByEventIDHandlerNotFound creates a GetEventByEventIDHandlerNotFound with default headers values
func NewGetEventByEventIDHandlerNotFound() *GetEventByEventIDHandlerNotFound {
	return &GetEventByEventIDHandlerNotFound{}
}

/*GetEventByEventIDHandlerNotFound handles this case with default header values.

  Not Found
*/
type GetEventByEventIDHandlerNotFound struct {
}

func (o *GetEventByEventIDHandlerNotFound) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/eventId/{eventId}][%d] getEventByEventIdHandlerNotFound ", 404)
}

func (o *GetEventByEventIDHandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByEventIDHandlerInternalServerError creates a GetEventByEventIDHandlerInternalServerError with default headers values
func NewGetEventByEventIDHandlerInternalServerError() *GetEventByEventIDHandlerInternalServerError {
	return &GetEventByEventIDHandlerInternalServerError{}
}

/*GetEventByEventIDHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetEventByEventIDHandlerInternalServerError struct {
}

func (o *GetEventByEventIDHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/eventId/{eventId}][%d] getEventByEventIdHandlerInternalServerError ", 500)
}

func (o *GetEventByEventIDHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
