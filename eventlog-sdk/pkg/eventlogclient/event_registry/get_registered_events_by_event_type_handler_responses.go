// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package event_registry

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

// GetRegisteredEventsByEventTypeHandlerReader is a Reader for the GetRegisteredEventsByEventTypeHandler structure.
type GetRegisteredEventsByEventTypeHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetRegisteredEventsByEventTypeHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetRegisteredEventsByEventTypeHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetRegisteredEventsByEventTypeHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetRegisteredEventsByEventTypeHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetRegisteredEventsByEventTypeHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetRegisteredEventsByEventTypeHandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetRegisteredEventsByEventTypeHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /event/registry/eventTypes/{eventType} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetRegisteredEventsByEventTypeHandlerOK creates a GetRegisteredEventsByEventTypeHandlerOK with default headers values
func NewGetRegisteredEventsByEventTypeHandlerOK() *GetRegisteredEventsByEventTypeHandlerOK {
	return &GetRegisteredEventsByEventTypeHandlerOK{}
}

/*GetRegisteredEventsByEventTypeHandlerOK handles this case with default header values.

  OK
*/
type GetRegisteredEventsByEventTypeHandlerOK struct {
	Payload *eventlogclientmodels.ModelsEventRegistry
}

func (o *GetRegisteredEventsByEventTypeHandlerOK) Error() string {
	return fmt.Sprintf("[GET /event/registry/eventTypes/{eventType}][%d] getRegisteredEventsByEventTypeHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *GetRegisteredEventsByEventTypeHandlerOK) ToJSONString() string {
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

func (o *GetRegisteredEventsByEventTypeHandlerOK) GetPayload() *eventlogclientmodels.ModelsEventRegistry {
	return o.Payload
}

func (o *GetRegisteredEventsByEventTypeHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(eventlogclientmodels.ModelsEventRegistry)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetRegisteredEventsByEventTypeHandlerBadRequest creates a GetRegisteredEventsByEventTypeHandlerBadRequest with default headers values
func NewGetRegisteredEventsByEventTypeHandlerBadRequest() *GetRegisteredEventsByEventTypeHandlerBadRequest {
	return &GetRegisteredEventsByEventTypeHandlerBadRequest{}
}

/*GetRegisteredEventsByEventTypeHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type GetRegisteredEventsByEventTypeHandlerBadRequest struct {
}

func (o *GetRegisteredEventsByEventTypeHandlerBadRequest) Error() string {
	return fmt.Sprintf("[GET /event/registry/eventTypes/{eventType}][%d] getRegisteredEventsByEventTypeHandlerBadRequest ", 400)
}

func (o *GetRegisteredEventsByEventTypeHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetRegisteredEventsByEventTypeHandlerUnauthorized creates a GetRegisteredEventsByEventTypeHandlerUnauthorized with default headers values
func NewGetRegisteredEventsByEventTypeHandlerUnauthorized() *GetRegisteredEventsByEventTypeHandlerUnauthorized {
	return &GetRegisteredEventsByEventTypeHandlerUnauthorized{}
}

/*GetRegisteredEventsByEventTypeHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetRegisteredEventsByEventTypeHandlerUnauthorized struct {
}

func (o *GetRegisteredEventsByEventTypeHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /event/registry/eventTypes/{eventType}][%d] getRegisteredEventsByEventTypeHandlerUnauthorized ", 401)
}

func (o *GetRegisteredEventsByEventTypeHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetRegisteredEventsByEventTypeHandlerForbidden creates a GetRegisteredEventsByEventTypeHandlerForbidden with default headers values
func NewGetRegisteredEventsByEventTypeHandlerForbidden() *GetRegisteredEventsByEventTypeHandlerForbidden {
	return &GetRegisteredEventsByEventTypeHandlerForbidden{}
}

/*GetRegisteredEventsByEventTypeHandlerForbidden handles this case with default header values.

  Forbidden
*/
type GetRegisteredEventsByEventTypeHandlerForbidden struct {
}

func (o *GetRegisteredEventsByEventTypeHandlerForbidden) Error() string {
	return fmt.Sprintf("[GET /event/registry/eventTypes/{eventType}][%d] getRegisteredEventsByEventTypeHandlerForbidden ", 403)
}

func (o *GetRegisteredEventsByEventTypeHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetRegisteredEventsByEventTypeHandlerNotFound creates a GetRegisteredEventsByEventTypeHandlerNotFound with default headers values
func NewGetRegisteredEventsByEventTypeHandlerNotFound() *GetRegisteredEventsByEventTypeHandlerNotFound {
	return &GetRegisteredEventsByEventTypeHandlerNotFound{}
}

/*GetRegisteredEventsByEventTypeHandlerNotFound handles this case with default header values.

  Not Found
*/
type GetRegisteredEventsByEventTypeHandlerNotFound struct {
}

func (o *GetRegisteredEventsByEventTypeHandlerNotFound) Error() string {
	return fmt.Sprintf("[GET /event/registry/eventTypes/{eventType}][%d] getRegisteredEventsByEventTypeHandlerNotFound ", 404)
}

func (o *GetRegisteredEventsByEventTypeHandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetRegisteredEventsByEventTypeHandlerInternalServerError creates a GetRegisteredEventsByEventTypeHandlerInternalServerError with default headers values
func NewGetRegisteredEventsByEventTypeHandlerInternalServerError() *GetRegisteredEventsByEventTypeHandlerInternalServerError {
	return &GetRegisteredEventsByEventTypeHandlerInternalServerError{}
}

/*GetRegisteredEventsByEventTypeHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetRegisteredEventsByEventTypeHandlerInternalServerError struct {
}

func (o *GetRegisteredEventsByEventTypeHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /event/registry/eventTypes/{eventType}][%d] getRegisteredEventsByEventTypeHandlerInternalServerError ", 500)
}

func (o *GetRegisteredEventsByEventTypeHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
