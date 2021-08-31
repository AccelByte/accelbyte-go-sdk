// Code generated by go-swagger; DO NOT EDIT.

package notification

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// DeleteNotificationTopicV1AdminReader is a Reader for the DeleteNotificationTopicV1Admin structure.
type DeleteNotificationTopicV1AdminReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteNotificationTopicV1AdminReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteNotificationTopicV1AdminNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteNotificationTopicV1AdminUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteNotificationTopicV1AdminForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteNotificationTopicV1AdminNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteNotificationTopicV1AdminInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /v1/admin/notification/namespaces/{namespace}/topics/{topicName} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteNotificationTopicV1AdminNoContent creates a DeleteNotificationTopicV1AdminNoContent with default headers values
func NewDeleteNotificationTopicV1AdminNoContent() *DeleteNotificationTopicV1AdminNoContent {
	return &DeleteNotificationTopicV1AdminNoContent{}
}

/*DeleteNotificationTopicV1AdminNoContent handles this case with default header values.

  No Content
*/
type DeleteNotificationTopicV1AdminNoContent struct {
}

func (o *DeleteNotificationTopicV1AdminNoContent) Error() string {
	return fmt.Sprintf("[DELETE /v1/admin/notification/namespaces/{namespace}/topics/{topicName}][%d] deleteNotificationTopicV1AdminNoContent ", 204)
}

func (o *DeleteNotificationTopicV1AdminNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewDeleteNotificationTopicV1AdminUnauthorized creates a DeleteNotificationTopicV1AdminUnauthorized with default headers values
func NewDeleteNotificationTopicV1AdminUnauthorized() *DeleteNotificationTopicV1AdminUnauthorized {
	return &DeleteNotificationTopicV1AdminUnauthorized{}
}

/*DeleteNotificationTopicV1AdminUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteNotificationTopicV1AdminUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *DeleteNotificationTopicV1AdminUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /v1/admin/notification/namespaces/{namespace}/topics/{topicName}][%d] deleteNotificationTopicV1AdminUnauthorized  %+v", 401, o.Payload)
}

func (o *DeleteNotificationTopicV1AdminUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *DeleteNotificationTopicV1AdminUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteNotificationTopicV1AdminForbidden creates a DeleteNotificationTopicV1AdminForbidden with default headers values
func NewDeleteNotificationTopicV1AdminForbidden() *DeleteNotificationTopicV1AdminForbidden {
	return &DeleteNotificationTopicV1AdminForbidden{}
}

/*DeleteNotificationTopicV1AdminForbidden handles this case with default header values.

  Forbidden
*/
type DeleteNotificationTopicV1AdminForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *DeleteNotificationTopicV1AdminForbidden) Error() string {
	return fmt.Sprintf("[DELETE /v1/admin/notification/namespaces/{namespace}/topics/{topicName}][%d] deleteNotificationTopicV1AdminForbidden  %+v", 403, o.Payload)
}

func (o *DeleteNotificationTopicV1AdminForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *DeleteNotificationTopicV1AdminForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteNotificationTopicV1AdminNotFound creates a DeleteNotificationTopicV1AdminNotFound with default headers values
func NewDeleteNotificationTopicV1AdminNotFound() *DeleteNotificationTopicV1AdminNotFound {
	return &DeleteNotificationTopicV1AdminNotFound{}
}

/*DeleteNotificationTopicV1AdminNotFound handles this case with default header values.

  Not Found
*/
type DeleteNotificationTopicV1AdminNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *DeleteNotificationTopicV1AdminNotFound) Error() string {
	return fmt.Sprintf("[DELETE /v1/admin/notification/namespaces/{namespace}/topics/{topicName}][%d] deleteNotificationTopicV1AdminNotFound  %+v", 404, o.Payload)
}

func (o *DeleteNotificationTopicV1AdminNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *DeleteNotificationTopicV1AdminNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteNotificationTopicV1AdminInternalServerError creates a DeleteNotificationTopicV1AdminInternalServerError with default headers values
func NewDeleteNotificationTopicV1AdminInternalServerError() *DeleteNotificationTopicV1AdminInternalServerError {
	return &DeleteNotificationTopicV1AdminInternalServerError{}
}

/*DeleteNotificationTopicV1AdminInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteNotificationTopicV1AdminInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *DeleteNotificationTopicV1AdminInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /v1/admin/notification/namespaces/{namespace}/topics/{topicName}][%d] deleteNotificationTopicV1AdminInternalServerError  %+v", 500, o.Payload)
}

func (o *DeleteNotificationTopicV1AdminInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *DeleteNotificationTopicV1AdminInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
