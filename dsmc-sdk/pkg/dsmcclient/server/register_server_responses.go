// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package server

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

// RegisterServerReader is a Reader for the RegisterServer structure.
type RegisterServerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RegisterServerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRegisterServerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRegisterServerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRegisterServerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewRegisterServerConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRegisterServerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /dsmcontroller/namespaces/{namespace}/servers/register returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRegisterServerOK creates a RegisterServerOK with default headers values
func NewRegisterServerOK() *RegisterServerOK {
	return &RegisterServerOK{}
}

/*RegisterServerOK handles this case with default header values.

  server registered
*/
type RegisterServerOK struct {
	Payload *dsmcclientmodels.ModelsServer
}

func (o *RegisterServerOK) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/servers/register][%d] registerServerOK  %+v", 200, o.ToJSONString())
}

func (o *RegisterServerOK) ToJSONString() string {
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

func (o *RegisterServerOK) GetPayload() *dsmcclientmodels.ModelsServer {
	return o.Payload
}

func (o *RegisterServerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsServer)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRegisterServerBadRequest creates a RegisterServerBadRequest with default headers values
func NewRegisterServerBadRequest() *RegisterServerBadRequest {
	return &RegisterServerBadRequest{}
}

/*RegisterServerBadRequest handles this case with default header values.

  malformed request
*/
type RegisterServerBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *RegisterServerBadRequest) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/servers/register][%d] registerServerBadRequest  %+v", 400, o.ToJSONString())
}

func (o *RegisterServerBadRequest) ToJSONString() string {
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

func (o *RegisterServerBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *RegisterServerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRegisterServerUnauthorized creates a RegisterServerUnauthorized with default headers values
func NewRegisterServerUnauthorized() *RegisterServerUnauthorized {
	return &RegisterServerUnauthorized{}
}

/*RegisterServerUnauthorized handles this case with default header values.

  Unauthorized
*/
type RegisterServerUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *RegisterServerUnauthorized) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/servers/register][%d] registerServerUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *RegisterServerUnauthorized) ToJSONString() string {
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

func (o *RegisterServerUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *RegisterServerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRegisterServerConflict creates a RegisterServerConflict with default headers values
func NewRegisterServerConflict() *RegisterServerConflict {
	return &RegisterServerConflict{}
}

/*RegisterServerConflict handles this case with default header values.

  server with same name already registered
*/
type RegisterServerConflict struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *RegisterServerConflict) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/servers/register][%d] registerServerConflict  %+v", 409, o.ToJSONString())
}

func (o *RegisterServerConflict) ToJSONString() string {
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

func (o *RegisterServerConflict) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *RegisterServerConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewRegisterServerInternalServerError creates a RegisterServerInternalServerError with default headers values
func NewRegisterServerInternalServerError() *RegisterServerInternalServerError {
	return &RegisterServerInternalServerError{}
}

/*RegisterServerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type RegisterServerInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *RegisterServerInternalServerError) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/namespaces/{namespace}/servers/register][%d] registerServerInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *RegisterServerInternalServerError) ToJSONString() string {
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

func (o *RegisterServerInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *RegisterServerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
