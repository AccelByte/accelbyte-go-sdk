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

// GetServerSessionReader is a Reader for the GetServerSession structure.
type GetServerSessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetServerSessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetServerSessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetServerSessionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetServerSessionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetServerSessionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetServerSessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dsmcontroller/namespaces/{namespace}/servers/{podName}/session returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetServerSessionOK creates a GetServerSessionOK with default headers values
func NewGetServerSessionOK() *GetServerSessionOK {
	return &GetServerSessionOK{}
}

/*GetServerSessionOK handles this case with default header values.

  session found
*/
type GetServerSessionOK struct {
	Payload *dsmcclientmodels.ModelsServerSessionResponse
}

func (o *GetServerSessionOK) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/servers/{podName}/session][%d] getServerSessionOK  %+v", 200, o.ToJSONString())
}

func (o *GetServerSessionOK) ToJSONString() string {
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

func (o *GetServerSessionOK) GetPayload() *dsmcclientmodels.ModelsServerSessionResponse {
	return o.Payload
}

func (o *GetServerSessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsServerSessionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetServerSessionBadRequest creates a GetServerSessionBadRequest with default headers values
func NewGetServerSessionBadRequest() *GetServerSessionBadRequest {
	return &GetServerSessionBadRequest{}
}

/*GetServerSessionBadRequest handles this case with default header values.

  malformed request
*/
type GetServerSessionBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetServerSessionBadRequest) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/servers/{podName}/session][%d] getServerSessionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetServerSessionBadRequest) ToJSONString() string {
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

func (o *GetServerSessionBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetServerSessionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetServerSessionUnauthorized creates a GetServerSessionUnauthorized with default headers values
func NewGetServerSessionUnauthorized() *GetServerSessionUnauthorized {
	return &GetServerSessionUnauthorized{}
}

/*GetServerSessionUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetServerSessionUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetServerSessionUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/servers/{podName}/session][%d] getServerSessionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetServerSessionUnauthorized) ToJSONString() string {
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

func (o *GetServerSessionUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetServerSessionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetServerSessionNotFound creates a GetServerSessionNotFound with default headers values
func NewGetServerSessionNotFound() *GetServerSessionNotFound {
	return &GetServerSessionNotFound{}
}

/*GetServerSessionNotFound handles this case with default header values.

  server not found
*/
type GetServerSessionNotFound struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetServerSessionNotFound) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/servers/{podName}/session][%d] getServerSessionNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetServerSessionNotFound) ToJSONString() string {
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

func (o *GetServerSessionNotFound) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetServerSessionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetServerSessionInternalServerError creates a GetServerSessionInternalServerError with default headers values
func NewGetServerSessionInternalServerError() *GetServerSessionInternalServerError {
	return &GetServerSessionInternalServerError{}
}

/*GetServerSessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetServerSessionInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *GetServerSessionInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dsmcontroller/namespaces/{namespace}/servers/{podName}/session][%d] getServerSessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetServerSessionInternalServerError) ToJSONString() string {
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

func (o *GetServerSessionInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetServerSessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
