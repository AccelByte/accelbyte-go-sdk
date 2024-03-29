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

// GetEventByUserIDAndEventIDHandlerReader is a Reader for the GetEventByUserIDAndEventIDHandler structure.
type GetEventByUserIDAndEventIDHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetEventByUserIDAndEventIDHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetEventByUserIDAndEventIDHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetEventByUserIDAndEventIDHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetEventByUserIDAndEventIDHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetEventByUserIDAndEventIDHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetEventByUserIDAndEventIDHandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetEventByUserIDAndEventIDHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /event/namespaces/{namespace}/users/{userId}/eventId/{eventId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetEventByUserIDAndEventIDHandlerOK creates a GetEventByUserIDAndEventIDHandlerOK with default headers values
func NewGetEventByUserIDAndEventIDHandlerOK() *GetEventByUserIDAndEventIDHandlerOK {
	return &GetEventByUserIDAndEventIDHandlerOK{}
}

/*GetEventByUserIDAndEventIDHandlerOK handles this case with default header values.

  OK
*/
type GetEventByUserIDAndEventIDHandlerOK struct {
	Payload *eventlogclientmodels.ModelsEventResponse
}

func (o *GetEventByUserIDAndEventIDHandlerOK) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/eventId/{eventId}][%d] getEventByUserIdAndEventIdHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *GetEventByUserIDAndEventIDHandlerOK) ToJSONString() string {
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

func (o *GetEventByUserIDAndEventIDHandlerOK) GetPayload() *eventlogclientmodels.ModelsEventResponse {
	return o.Payload
}

func (o *GetEventByUserIDAndEventIDHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetEventByUserIDAndEventIDHandlerBadRequest creates a GetEventByUserIDAndEventIDHandlerBadRequest with default headers values
func NewGetEventByUserIDAndEventIDHandlerBadRequest() *GetEventByUserIDAndEventIDHandlerBadRequest {
	return &GetEventByUserIDAndEventIDHandlerBadRequest{}
}

/*GetEventByUserIDAndEventIDHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type GetEventByUserIDAndEventIDHandlerBadRequest struct {
}

func (o *GetEventByUserIDAndEventIDHandlerBadRequest) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/eventId/{eventId}][%d] getEventByUserIdAndEventIdHandlerBadRequest ", 400)
}

func (o *GetEventByUserIDAndEventIDHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByUserIDAndEventIDHandlerUnauthorized creates a GetEventByUserIDAndEventIDHandlerUnauthorized with default headers values
func NewGetEventByUserIDAndEventIDHandlerUnauthorized() *GetEventByUserIDAndEventIDHandlerUnauthorized {
	return &GetEventByUserIDAndEventIDHandlerUnauthorized{}
}

/*GetEventByUserIDAndEventIDHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetEventByUserIDAndEventIDHandlerUnauthorized struct {
}

func (o *GetEventByUserIDAndEventIDHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/eventId/{eventId}][%d] getEventByUserIdAndEventIdHandlerUnauthorized ", 401)
}

func (o *GetEventByUserIDAndEventIDHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByUserIDAndEventIDHandlerForbidden creates a GetEventByUserIDAndEventIDHandlerForbidden with default headers values
func NewGetEventByUserIDAndEventIDHandlerForbidden() *GetEventByUserIDAndEventIDHandlerForbidden {
	return &GetEventByUserIDAndEventIDHandlerForbidden{}
}

/*GetEventByUserIDAndEventIDHandlerForbidden handles this case with default header values.

  Forbidden
*/
type GetEventByUserIDAndEventIDHandlerForbidden struct {
}

func (o *GetEventByUserIDAndEventIDHandlerForbidden) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/eventId/{eventId}][%d] getEventByUserIdAndEventIdHandlerForbidden ", 403)
}

func (o *GetEventByUserIDAndEventIDHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByUserIDAndEventIDHandlerNotFound creates a GetEventByUserIDAndEventIDHandlerNotFound with default headers values
func NewGetEventByUserIDAndEventIDHandlerNotFound() *GetEventByUserIDAndEventIDHandlerNotFound {
	return &GetEventByUserIDAndEventIDHandlerNotFound{}
}

/*GetEventByUserIDAndEventIDHandlerNotFound handles this case with default header values.

  Not Found
*/
type GetEventByUserIDAndEventIDHandlerNotFound struct {
}

func (o *GetEventByUserIDAndEventIDHandlerNotFound) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/eventId/{eventId}][%d] getEventByUserIdAndEventIdHandlerNotFound ", 404)
}

func (o *GetEventByUserIDAndEventIDHandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByUserIDAndEventIDHandlerInternalServerError creates a GetEventByUserIDAndEventIDHandlerInternalServerError with default headers values
func NewGetEventByUserIDAndEventIDHandlerInternalServerError() *GetEventByUserIDAndEventIDHandlerInternalServerError {
	return &GetEventByUserIDAndEventIDHandlerInternalServerError{}
}

/*GetEventByUserIDAndEventIDHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetEventByUserIDAndEventIDHandlerInternalServerError struct {
}

func (o *GetEventByUserIDAndEventIDHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/eventId/{eventId}][%d] getEventByUserIdAndEventIdHandlerInternalServerError ", 500)
}

func (o *GetEventByUserIDAndEventIDHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
