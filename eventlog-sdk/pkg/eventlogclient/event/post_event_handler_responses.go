// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package event

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// PostEventHandlerReader is a Reader for the PostEventHandler structure.
type PostEventHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PostEventHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPostEventHandlerNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPostEventHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPostEventHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPostEventHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPostEventHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /event/namespaces/{namespace} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPostEventHandlerNoContent creates a PostEventHandlerNoContent with default headers values
func NewPostEventHandlerNoContent() *PostEventHandlerNoContent {
	return &PostEventHandlerNoContent{}
}

/*PostEventHandlerNoContent handles this case with default header values.

  No Content
*/
type PostEventHandlerNoContent struct {
}

func (o *PostEventHandlerNoContent) Error() string {
	return fmt.Sprintf("[POST /event/namespaces/{namespace}][%d] postEventHandlerNoContent ", 204)
}

func (o *PostEventHandlerNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPostEventHandlerBadRequest creates a PostEventHandlerBadRequest with default headers values
func NewPostEventHandlerBadRequest() *PostEventHandlerBadRequest {
	return &PostEventHandlerBadRequest{}
}

/*PostEventHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type PostEventHandlerBadRequest struct {
}

func (o *PostEventHandlerBadRequest) Error() string {
	return fmt.Sprintf("[POST /event/namespaces/{namespace}][%d] postEventHandlerBadRequest ", 400)
}

func (o *PostEventHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPostEventHandlerUnauthorized creates a PostEventHandlerUnauthorized with default headers values
func NewPostEventHandlerUnauthorized() *PostEventHandlerUnauthorized {
	return &PostEventHandlerUnauthorized{}
}

/*PostEventHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type PostEventHandlerUnauthorized struct {
}

func (o *PostEventHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[POST /event/namespaces/{namespace}][%d] postEventHandlerUnauthorized ", 401)
}

func (o *PostEventHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPostEventHandlerForbidden creates a PostEventHandlerForbidden with default headers values
func NewPostEventHandlerForbidden() *PostEventHandlerForbidden {
	return &PostEventHandlerForbidden{}
}

/*PostEventHandlerForbidden handles this case with default header values.

  Forbidden
*/
type PostEventHandlerForbidden struct {
}

func (o *PostEventHandlerForbidden) Error() string {
	return fmt.Sprintf("[POST /event/namespaces/{namespace}][%d] postEventHandlerForbidden ", 403)
}

func (o *PostEventHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPostEventHandlerInternalServerError creates a PostEventHandlerInternalServerError with default headers values
func NewPostEventHandlerInternalServerError() *PostEventHandlerInternalServerError {
	return &PostEventHandlerInternalServerError{}
}

/*PostEventHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PostEventHandlerInternalServerError struct {
}

func (o *PostEventHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[POST /event/namespaces/{namespace}][%d] postEventHandlerInternalServerError ", 500)
}

func (o *PostEventHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
