// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package event_registry

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// UnregisterEventIDHandlerReader is a Reader for the UnregisterEventIDHandler structure.
type UnregisterEventIDHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UnregisterEventIDHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUnregisterEventIDHandlerNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUnregisterEventIDHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUnregisterEventIDHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUnregisterEventIDHandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUnregisterEventIDHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /event/registry/eventIds/{eventId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUnregisterEventIDHandlerNoContent creates a UnregisterEventIDHandlerNoContent with default headers values
func NewUnregisterEventIDHandlerNoContent() *UnregisterEventIDHandlerNoContent {
	return &UnregisterEventIDHandlerNoContent{}
}

/*UnregisterEventIDHandlerNoContent handles this case with default header values.

  No Content
*/
type UnregisterEventIDHandlerNoContent struct {
}

func (o *UnregisterEventIDHandlerNoContent) Error() string {
	return fmt.Sprintf("[DELETE /event/registry/eventIds/{eventId}][%d] unregisterEventIdHandlerNoContent ", 204)
}

func (o *UnregisterEventIDHandlerNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUnregisterEventIDHandlerUnauthorized creates a UnregisterEventIDHandlerUnauthorized with default headers values
func NewUnregisterEventIDHandlerUnauthorized() *UnregisterEventIDHandlerUnauthorized {
	return &UnregisterEventIDHandlerUnauthorized{}
}

/*UnregisterEventIDHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type UnregisterEventIDHandlerUnauthorized struct {
}

func (o *UnregisterEventIDHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /event/registry/eventIds/{eventId}][%d] unregisterEventIdHandlerUnauthorized ", 401)
}

func (o *UnregisterEventIDHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUnregisterEventIDHandlerForbidden creates a UnregisterEventIDHandlerForbidden with default headers values
func NewUnregisterEventIDHandlerForbidden() *UnregisterEventIDHandlerForbidden {
	return &UnregisterEventIDHandlerForbidden{}
}

/*UnregisterEventIDHandlerForbidden handles this case with default header values.

  Forbidden
*/
type UnregisterEventIDHandlerForbidden struct {
}

func (o *UnregisterEventIDHandlerForbidden) Error() string {
	return fmt.Sprintf("[DELETE /event/registry/eventIds/{eventId}][%d] unregisterEventIdHandlerForbidden ", 403)
}

func (o *UnregisterEventIDHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUnregisterEventIDHandlerNotFound creates a UnregisterEventIDHandlerNotFound with default headers values
func NewUnregisterEventIDHandlerNotFound() *UnregisterEventIDHandlerNotFound {
	return &UnregisterEventIDHandlerNotFound{}
}

/*UnregisterEventIDHandlerNotFound handles this case with default header values.

  Not Found
*/
type UnregisterEventIDHandlerNotFound struct {
}

func (o *UnregisterEventIDHandlerNotFound) Error() string {
	return fmt.Sprintf("[DELETE /event/registry/eventIds/{eventId}][%d] unregisterEventIdHandlerNotFound ", 404)
}

func (o *UnregisterEventIDHandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUnregisterEventIDHandlerInternalServerError creates a UnregisterEventIDHandlerInternalServerError with default headers values
func NewUnregisterEventIDHandlerInternalServerError() *UnregisterEventIDHandlerInternalServerError {
	return &UnregisterEventIDHandlerInternalServerError{}
}

/*UnregisterEventIDHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UnregisterEventIDHandlerInternalServerError struct {
}

func (o *UnregisterEventIDHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /event/registry/eventIds/{eventId}][%d] unregisterEventIdHandlerInternalServerError ", 500)
}

func (o *UnregisterEventIDHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
