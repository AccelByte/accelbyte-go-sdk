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

// UpdateEventRegistryHandlerReader is a Reader for the UpdateEventRegistryHandler structure.
type UpdateEventRegistryHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateEventRegistryHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUpdateEventRegistryHandlerNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateEventRegistryHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateEventRegistryHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateEventRegistryHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateEventRegistryHandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateEventRegistryHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /event/registry/eventIds/{eventId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateEventRegistryHandlerNoContent creates a UpdateEventRegistryHandlerNoContent with default headers values
func NewUpdateEventRegistryHandlerNoContent() *UpdateEventRegistryHandlerNoContent {
	return &UpdateEventRegistryHandlerNoContent{}
}

/*UpdateEventRegistryHandlerNoContent handles this case with default header values.

  No Content
*/
type UpdateEventRegistryHandlerNoContent struct {
}

func (o *UpdateEventRegistryHandlerNoContent) Error() string {
	return fmt.Sprintf("[POST /event/registry/eventIds/{eventId}][%d] updateEventRegistryHandlerNoContent ", 204)
}

func (o *UpdateEventRegistryHandlerNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUpdateEventRegistryHandlerBadRequest creates a UpdateEventRegistryHandlerBadRequest with default headers values
func NewUpdateEventRegistryHandlerBadRequest() *UpdateEventRegistryHandlerBadRequest {
	return &UpdateEventRegistryHandlerBadRequest{}
}

/*UpdateEventRegistryHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type UpdateEventRegistryHandlerBadRequest struct {
}

func (o *UpdateEventRegistryHandlerBadRequest) Error() string {
	return fmt.Sprintf("[POST /event/registry/eventIds/{eventId}][%d] updateEventRegistryHandlerBadRequest ", 400)
}

func (o *UpdateEventRegistryHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUpdateEventRegistryHandlerUnauthorized creates a UpdateEventRegistryHandlerUnauthorized with default headers values
func NewUpdateEventRegistryHandlerUnauthorized() *UpdateEventRegistryHandlerUnauthorized {
	return &UpdateEventRegistryHandlerUnauthorized{}
}

/*UpdateEventRegistryHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateEventRegistryHandlerUnauthorized struct {
}

func (o *UpdateEventRegistryHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[POST /event/registry/eventIds/{eventId}][%d] updateEventRegistryHandlerUnauthorized ", 401)
}

func (o *UpdateEventRegistryHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUpdateEventRegistryHandlerForbidden creates a UpdateEventRegistryHandlerForbidden with default headers values
func NewUpdateEventRegistryHandlerForbidden() *UpdateEventRegistryHandlerForbidden {
	return &UpdateEventRegistryHandlerForbidden{}
}

/*UpdateEventRegistryHandlerForbidden handles this case with default header values.

  Forbidden
*/
type UpdateEventRegistryHandlerForbidden struct {
}

func (o *UpdateEventRegistryHandlerForbidden) Error() string {
	return fmt.Sprintf("[POST /event/registry/eventIds/{eventId}][%d] updateEventRegistryHandlerForbidden ", 403)
}

func (o *UpdateEventRegistryHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUpdateEventRegistryHandlerNotFound creates a UpdateEventRegistryHandlerNotFound with default headers values
func NewUpdateEventRegistryHandlerNotFound() *UpdateEventRegistryHandlerNotFound {
	return &UpdateEventRegistryHandlerNotFound{}
}

/*UpdateEventRegistryHandlerNotFound handles this case with default header values.

  Not Found
*/
type UpdateEventRegistryHandlerNotFound struct {
}

func (o *UpdateEventRegistryHandlerNotFound) Error() string {
	return fmt.Sprintf("[POST /event/registry/eventIds/{eventId}][%d] updateEventRegistryHandlerNotFound ", 404)
}

func (o *UpdateEventRegistryHandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUpdateEventRegistryHandlerInternalServerError creates a UpdateEventRegistryHandlerInternalServerError with default headers values
func NewUpdateEventRegistryHandlerInternalServerError() *UpdateEventRegistryHandlerInternalServerError {
	return &UpdateEventRegistryHandlerInternalServerError{}
}

/*UpdateEventRegistryHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateEventRegistryHandlerInternalServerError struct {
}

func (o *UpdateEventRegistryHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[POST /event/registry/eventIds/{eventId}][%d] updateEventRegistryHandlerInternalServerError ", 500)
}

func (o *UpdateEventRegistryHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
