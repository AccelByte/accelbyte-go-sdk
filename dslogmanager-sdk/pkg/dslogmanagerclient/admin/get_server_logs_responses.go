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

	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclientmodels"
)

// GetServerLogsReader is a Reader for the GetServerLogs structure.
type GetServerLogsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetServerLogsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetServerLogsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetServerLogsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetServerLogsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetServerLogsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetServerLogsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dslogmanager/admin/namespaces/{namespace}/servers/{podName}/logs returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetServerLogsOK creates a GetServerLogsOK with default headers values
func NewGetServerLogsOK() *GetServerLogsOK {
	return &GetServerLogsOK{}
}

/*GetServerLogsOK handles this case with default header values.

  server logs queried
*/
type GetServerLogsOK struct {
	Payload *dslogmanagerclientmodels.ModelsServerLogs
}

func (o *GetServerLogsOK) Error() string {
	return fmt.Sprintf("[GET /dslogmanager/admin/namespaces/{namespace}/servers/{podName}/logs][%d] getServerLogsOK  %+v", 200, o.ToJSONString())
}

func (o *GetServerLogsOK) ToJSONString() string {
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

func (o *GetServerLogsOK) GetPayload() *dslogmanagerclientmodels.ModelsServerLogs {
	return o.Payload
}

func (o *GetServerLogsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dslogmanagerclientmodels.ModelsServerLogs)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetServerLogsBadRequest creates a GetServerLogsBadRequest with default headers values
func NewGetServerLogsBadRequest() *GetServerLogsBadRequest {
	return &GetServerLogsBadRequest{}
}

/*GetServerLogsBadRequest handles this case with default header values.

  malformed request
*/
type GetServerLogsBadRequest struct {
	Payload *dslogmanagerclientmodels.ResponseError
}

func (o *GetServerLogsBadRequest) Error() string {
	return fmt.Sprintf("[GET /dslogmanager/admin/namespaces/{namespace}/servers/{podName}/logs][%d] getServerLogsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetServerLogsBadRequest) ToJSONString() string {
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

func (o *GetServerLogsBadRequest) GetPayload() *dslogmanagerclientmodels.ResponseError {
	return o.Payload
}

func (o *GetServerLogsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dslogmanagerclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetServerLogsUnauthorized creates a GetServerLogsUnauthorized with default headers values
func NewGetServerLogsUnauthorized() *GetServerLogsUnauthorized {
	return &GetServerLogsUnauthorized{}
}

/*GetServerLogsUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetServerLogsUnauthorized struct {
	Payload *dslogmanagerclientmodels.ResponseError
}

func (o *GetServerLogsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /dslogmanager/admin/namespaces/{namespace}/servers/{podName}/logs][%d] getServerLogsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetServerLogsUnauthorized) ToJSONString() string {
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

func (o *GetServerLogsUnauthorized) GetPayload() *dslogmanagerclientmodels.ResponseError {
	return o.Payload
}

func (o *GetServerLogsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dslogmanagerclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetServerLogsNotFound creates a GetServerLogsNotFound with default headers values
func NewGetServerLogsNotFound() *GetServerLogsNotFound {
	return &GetServerLogsNotFound{}
}

/*GetServerLogsNotFound handles this case with default header values.

  server not found
*/
type GetServerLogsNotFound struct {
	Payload *dslogmanagerclientmodels.ResponseError
}

func (o *GetServerLogsNotFound) Error() string {
	return fmt.Sprintf("[GET /dslogmanager/admin/namespaces/{namespace}/servers/{podName}/logs][%d] getServerLogsNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetServerLogsNotFound) ToJSONString() string {
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

func (o *GetServerLogsNotFound) GetPayload() *dslogmanagerclientmodels.ResponseError {
	return o.Payload
}

func (o *GetServerLogsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dslogmanagerclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetServerLogsInternalServerError creates a GetServerLogsInternalServerError with default headers values
func NewGetServerLogsInternalServerError() *GetServerLogsInternalServerError {
	return &GetServerLogsInternalServerError{}
}

/*GetServerLogsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetServerLogsInternalServerError struct {
	Payload *dslogmanagerclientmodels.ResponseError
}

func (o *GetServerLogsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dslogmanager/admin/namespaces/{namespace}/servers/{podName}/logs][%d] getServerLogsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetServerLogsInternalServerError) ToJSONString() string {
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

func (o *GetServerLogsInternalServerError) GetPayload() *dslogmanagerclientmodels.ResponseError {
	return o.Payload
}

func (o *GetServerLogsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dslogmanagerclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
