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

// RegisterEventHandlerReader is a Reader for the RegisterEventHandler structure.
type RegisterEventHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RegisterEventHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewRegisterEventHandlerCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRegisterEventHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRegisterEventHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRegisterEventHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewRegisterEventHandlerConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRegisterEventHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /event/registry/eventIds returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRegisterEventHandlerCreated creates a RegisterEventHandlerCreated with default headers values
func NewRegisterEventHandlerCreated() *RegisterEventHandlerCreated {
	return &RegisterEventHandlerCreated{}
}

/*RegisterEventHandlerCreated handles this case with default header values.

  Created
*/
type RegisterEventHandlerCreated struct {
}

func (o *RegisterEventHandlerCreated) Error() string {
	return fmt.Sprintf("[POST /event/registry/eventIds][%d] registerEventHandlerCreated ", 201)
}

func (o *RegisterEventHandlerCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewRegisterEventHandlerBadRequest creates a RegisterEventHandlerBadRequest with default headers values
func NewRegisterEventHandlerBadRequest() *RegisterEventHandlerBadRequest {
	return &RegisterEventHandlerBadRequest{}
}

/*RegisterEventHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type RegisterEventHandlerBadRequest struct {
}

func (o *RegisterEventHandlerBadRequest) Error() string {
	return fmt.Sprintf("[POST /event/registry/eventIds][%d] registerEventHandlerBadRequest ", 400)
}

func (o *RegisterEventHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewRegisterEventHandlerUnauthorized creates a RegisterEventHandlerUnauthorized with default headers values
func NewRegisterEventHandlerUnauthorized() *RegisterEventHandlerUnauthorized {
	return &RegisterEventHandlerUnauthorized{}
}

/*RegisterEventHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type RegisterEventHandlerUnauthorized struct {
}

func (o *RegisterEventHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[POST /event/registry/eventIds][%d] registerEventHandlerUnauthorized ", 401)
}

func (o *RegisterEventHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewRegisterEventHandlerForbidden creates a RegisterEventHandlerForbidden with default headers values
func NewRegisterEventHandlerForbidden() *RegisterEventHandlerForbidden {
	return &RegisterEventHandlerForbidden{}
}

/*RegisterEventHandlerForbidden handles this case with default header values.

  Forbidden
*/
type RegisterEventHandlerForbidden struct {
}

func (o *RegisterEventHandlerForbidden) Error() string {
	return fmt.Sprintf("[POST /event/registry/eventIds][%d] registerEventHandlerForbidden ", 403)
}

func (o *RegisterEventHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewRegisterEventHandlerConflict creates a RegisterEventHandlerConflict with default headers values
func NewRegisterEventHandlerConflict() *RegisterEventHandlerConflict {
	return &RegisterEventHandlerConflict{}
}

/*RegisterEventHandlerConflict handles this case with default header values.

  Conflict
*/
type RegisterEventHandlerConflict struct {
}

func (o *RegisterEventHandlerConflict) Error() string {
	return fmt.Sprintf("[POST /event/registry/eventIds][%d] registerEventHandlerConflict ", 409)
}

func (o *RegisterEventHandlerConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewRegisterEventHandlerInternalServerError creates a RegisterEventHandlerInternalServerError with default headers values
func NewRegisterEventHandlerInternalServerError() *RegisterEventHandlerInternalServerError {
	return &RegisterEventHandlerInternalServerError{}
}

/*RegisterEventHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type RegisterEventHandlerInternalServerError struct {
}

func (o *RegisterEventHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[POST /event/registry/eventIds][%d] registerEventHandlerInternalServerError ", 500)
}

func (o *RegisterEventHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
