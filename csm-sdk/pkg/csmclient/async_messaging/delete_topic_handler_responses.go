// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package async_messaging

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
)

// DeleteTopicHandlerReader is a Reader for the DeleteTopicHandler structure.
type DeleteTopicHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteTopicHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDeleteTopicHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteTopicHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteTopicHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteTopicHandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteTopicHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics/{topicName} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteTopicHandlerOK creates a DeleteTopicHandlerOK with default headers values
func NewDeleteTopicHandlerOK() *DeleteTopicHandlerOK {
	return &DeleteTopicHandlerOK{}
}

/*DeleteTopicHandlerOK handles this case with default header values.

  OK
*/
type DeleteTopicHandlerOK struct {
	Payload *csmclientmodels.ApimodelTopicResponse
}

func (o *DeleteTopicHandlerOK) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics/{topicName}][%d] deleteTopicHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *DeleteTopicHandlerOK) ToJSONString() string {
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

func (o *DeleteTopicHandlerOK) GetPayload() *csmclientmodels.ApimodelTopicResponse {
	return o.Payload
}

func (o *DeleteTopicHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelTopicResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteTopicHandlerUnauthorized creates a DeleteTopicHandlerUnauthorized with default headers values
func NewDeleteTopicHandlerUnauthorized() *DeleteTopicHandlerUnauthorized {
	return &DeleteTopicHandlerUnauthorized{}
}

/*DeleteTopicHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteTopicHandlerUnauthorized struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteTopicHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics/{topicName}][%d] deleteTopicHandlerUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteTopicHandlerUnauthorized) ToJSONString() string {
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

func (o *DeleteTopicHandlerUnauthorized) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteTopicHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteTopicHandlerForbidden creates a DeleteTopicHandlerForbidden with default headers values
func NewDeleteTopicHandlerForbidden() *DeleteTopicHandlerForbidden {
	return &DeleteTopicHandlerForbidden{}
}

/*DeleteTopicHandlerForbidden handles this case with default header values.

  Forbidden
*/
type DeleteTopicHandlerForbidden struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteTopicHandlerForbidden) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics/{topicName}][%d] deleteTopicHandlerForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteTopicHandlerForbidden) ToJSONString() string {
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

func (o *DeleteTopicHandlerForbidden) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteTopicHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteTopicHandlerNotFound creates a DeleteTopicHandlerNotFound with default headers values
func NewDeleteTopicHandlerNotFound() *DeleteTopicHandlerNotFound {
	return &DeleteTopicHandlerNotFound{}
}

/*DeleteTopicHandlerNotFound handles this case with default header values.

  Not Found
*/
type DeleteTopicHandlerNotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteTopicHandlerNotFound) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics/{topicName}][%d] deleteTopicHandlerNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteTopicHandlerNotFound) ToJSONString() string {
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

func (o *DeleteTopicHandlerNotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteTopicHandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteTopicHandlerInternalServerError creates a DeleteTopicHandlerInternalServerError with default headers values
func NewDeleteTopicHandlerInternalServerError() *DeleteTopicHandlerInternalServerError {
	return &DeleteTopicHandlerInternalServerError{}
}

/*DeleteTopicHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteTopicHandlerInternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *DeleteTopicHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics/{topicName}][%d] deleteTopicHandlerInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteTopicHandlerInternalServerError) ToJSONString() string {
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

func (o *DeleteTopicHandlerInternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteTopicHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
