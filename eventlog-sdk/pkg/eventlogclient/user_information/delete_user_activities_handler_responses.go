// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_information

import (
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// DeleteUserActivitiesHandlerReader is a Reader for the DeleteUserActivitiesHandler structure.
type DeleteUserActivitiesHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteUserActivitiesHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteUserActivitiesHandlerNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteUserActivitiesHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteUserActivitiesHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteUserActivitiesHandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteUserActivitiesHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /event/namespaces/{namespace}/users/{userId}/activities returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteUserActivitiesHandlerNoContent creates a DeleteUserActivitiesHandlerNoContent with default headers values
func NewDeleteUserActivitiesHandlerNoContent() *DeleteUserActivitiesHandlerNoContent {
	return &DeleteUserActivitiesHandlerNoContent{}
}

/*DeleteUserActivitiesHandlerNoContent handles this case with default header values.

  No Content
*/
type DeleteUserActivitiesHandlerNoContent struct {
}

func (o *DeleteUserActivitiesHandlerNoContent) Error() string {
	return fmt.Sprintf("[DELETE /event/namespaces/{namespace}/users/{userId}/activities][%d] deleteUserActivitiesHandlerNoContent ", 204)
}

func (o *DeleteUserActivitiesHandlerNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteUserActivitiesHandlerUnauthorized creates a DeleteUserActivitiesHandlerUnauthorized with default headers values
func NewDeleteUserActivitiesHandlerUnauthorized() *DeleteUserActivitiesHandlerUnauthorized {
	return &DeleteUserActivitiesHandlerUnauthorized{}
}

/*DeleteUserActivitiesHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteUserActivitiesHandlerUnauthorized struct {
}

func (o *DeleteUserActivitiesHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /event/namespaces/{namespace}/users/{userId}/activities][%d] deleteUserActivitiesHandlerUnauthorized ", 401)
}

func (o *DeleteUserActivitiesHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteUserActivitiesHandlerForbidden creates a DeleteUserActivitiesHandlerForbidden with default headers values
func NewDeleteUserActivitiesHandlerForbidden() *DeleteUserActivitiesHandlerForbidden {
	return &DeleteUserActivitiesHandlerForbidden{}
}

/*DeleteUserActivitiesHandlerForbidden handles this case with default header values.

  Forbidden
*/
type DeleteUserActivitiesHandlerForbidden struct {
}

func (o *DeleteUserActivitiesHandlerForbidden) Error() string {
	return fmt.Sprintf("[DELETE /event/namespaces/{namespace}/users/{userId}/activities][%d] deleteUserActivitiesHandlerForbidden ", 403)
}

func (o *DeleteUserActivitiesHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteUserActivitiesHandlerNotFound creates a DeleteUserActivitiesHandlerNotFound with default headers values
func NewDeleteUserActivitiesHandlerNotFound() *DeleteUserActivitiesHandlerNotFound {
	return &DeleteUserActivitiesHandlerNotFound{}
}

/*DeleteUserActivitiesHandlerNotFound handles this case with default header values.

  Not Found
*/
type DeleteUserActivitiesHandlerNotFound struct {
}

func (o *DeleteUserActivitiesHandlerNotFound) Error() string {
	return fmt.Sprintf("[DELETE /event/namespaces/{namespace}/users/{userId}/activities][%d] deleteUserActivitiesHandlerNotFound ", 404)
}

func (o *DeleteUserActivitiesHandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteUserActivitiesHandlerInternalServerError creates a DeleteUserActivitiesHandlerInternalServerError with default headers values
func NewDeleteUserActivitiesHandlerInternalServerError() *DeleteUserActivitiesHandlerInternalServerError {
	return &DeleteUserActivitiesHandlerInternalServerError{}
}

/*DeleteUserActivitiesHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteUserActivitiesHandlerInternalServerError struct {
}

func (o *DeleteUserActivitiesHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /event/namespaces/{namespace}/users/{userId}/activities][%d] deleteUserActivitiesHandlerInternalServerError ", 500)
}

func (o *DeleteUserActivitiesHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
