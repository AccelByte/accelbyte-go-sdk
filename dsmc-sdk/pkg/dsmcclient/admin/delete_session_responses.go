// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

// DeleteSessionReader is a Reader for the DeleteSession structure.
type DeleteSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteSessionNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteSessionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /dsmcontroller/admin/namespaces/{namespace}/sessions/{sessionID} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteSessionNoContent creates a DeleteSessionNoContent with default headers values
func NewDeleteSessionNoContent() *DeleteSessionNoContent {
	return &DeleteSessionNoContent{}
}

/*DeleteSessionNoContent handles this case with default header values.

  session deleted
*/
type DeleteSessionNoContent struct {
}

func (o *DeleteSessionNoContent) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/sessions/{sessionID}][%d] deleteSessionNoContent ", 204)
}

func (o *DeleteSessionNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteSessionUnauthorized creates a DeleteSessionUnauthorized with default headers values
func NewDeleteSessionUnauthorized() *DeleteSessionUnauthorized {
	return &DeleteSessionUnauthorized{}
}

/*DeleteSessionUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteSessionUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteSessionUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/sessions/{sessionID}][%d] deleteSessionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteSessionUnauthorized) ToJSONString() string {
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

func (o *DeleteSessionUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteSessionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteSessionInternalServerError creates a DeleteSessionInternalServerError with default headers values
func NewDeleteSessionInternalServerError() *DeleteSessionInternalServerError {
	return &DeleteSessionInternalServerError{}
}

/*DeleteSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteSessionInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *DeleteSessionInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /dsmcontroller/admin/namespaces/{namespace}/sessions/{sessionID}][%d] deleteSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteSessionInternalServerError) ToJSONString() string {
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

func (o *DeleteSessionInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
