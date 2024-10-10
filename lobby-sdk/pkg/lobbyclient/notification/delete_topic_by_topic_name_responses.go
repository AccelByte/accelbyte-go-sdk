// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package notification

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// DeleteTopicByTopicNameReader is a Reader for the DeleteTopicByTopicName structure.
type DeleteTopicByTopicNameReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteTopicByTopicNameReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteTopicByTopicNameNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteTopicByTopicNameUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteTopicByTopicNameForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteTopicByTopicNameNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteTopicByTopicNameInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /notification/namespaces/{namespace}/topics/{topic} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteTopicByTopicNameNoContent creates a DeleteTopicByTopicNameNoContent with default headers values
func NewDeleteTopicByTopicNameNoContent() *DeleteTopicByTopicNameNoContent {
	return &DeleteTopicByTopicNameNoContent{}
}

/*DeleteTopicByTopicNameNoContent handles this case with default header values.

  No Content
*/
type DeleteTopicByTopicNameNoContent struct {
}

func (o *DeleteTopicByTopicNameNoContent) Error() string {
	return fmt.Sprintf("[DELETE /notification/namespaces/{namespace}/topics/{topic}][%d] deleteTopicByTopicNameNoContent ", 204)
}

func (o *DeleteTopicByTopicNameNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteTopicByTopicNameUnauthorized creates a DeleteTopicByTopicNameUnauthorized with default headers values
func NewDeleteTopicByTopicNameUnauthorized() *DeleteTopicByTopicNameUnauthorized {
	return &DeleteTopicByTopicNameUnauthorized{}
}

/*DeleteTopicByTopicNameUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteTopicByTopicNameUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *DeleteTopicByTopicNameUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /notification/namespaces/{namespace}/topics/{topic}][%d] deleteTopicByTopicNameUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteTopicByTopicNameUnauthorized) ToJSONString() string {
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

func (o *DeleteTopicByTopicNameUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *DeleteTopicByTopicNameUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteTopicByTopicNameForbidden creates a DeleteTopicByTopicNameForbidden with default headers values
func NewDeleteTopicByTopicNameForbidden() *DeleteTopicByTopicNameForbidden {
	return &DeleteTopicByTopicNameForbidden{}
}

/*DeleteTopicByTopicNameForbidden handles this case with default header values.

  Forbidden
*/
type DeleteTopicByTopicNameForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *DeleteTopicByTopicNameForbidden) Error() string {
	return fmt.Sprintf("[DELETE /notification/namespaces/{namespace}/topics/{topic}][%d] deleteTopicByTopicNameForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteTopicByTopicNameForbidden) ToJSONString() string {
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

func (o *DeleteTopicByTopicNameForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *DeleteTopicByTopicNameForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteTopicByTopicNameNotFound creates a DeleteTopicByTopicNameNotFound with default headers values
func NewDeleteTopicByTopicNameNotFound() *DeleteTopicByTopicNameNotFound {
	return &DeleteTopicByTopicNameNotFound{}
}

/*DeleteTopicByTopicNameNotFound handles this case with default header values.

  Not Found
*/
type DeleteTopicByTopicNameNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *DeleteTopicByTopicNameNotFound) Error() string {
	return fmt.Sprintf("[DELETE /notification/namespaces/{namespace}/topics/{topic}][%d] deleteTopicByTopicNameNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteTopicByTopicNameNotFound) ToJSONString() string {
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

func (o *DeleteTopicByTopicNameNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *DeleteTopicByTopicNameNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteTopicByTopicNameInternalServerError creates a DeleteTopicByTopicNameInternalServerError with default headers values
func NewDeleteTopicByTopicNameInternalServerError() *DeleteTopicByTopicNameInternalServerError {
	return &DeleteTopicByTopicNameInternalServerError{}
}

/*DeleteTopicByTopicNameInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteTopicByTopicNameInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *DeleteTopicByTopicNameInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /notification/namespaces/{namespace}/topics/{topic}][%d] deleteTopicByTopicNameInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteTopicByTopicNameInternalServerError) ToJSONString() string {
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

func (o *DeleteTopicByTopicNameInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *DeleteTopicByTopicNameInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
