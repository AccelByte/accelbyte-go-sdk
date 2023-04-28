// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package terminated_servers

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

// DownloadServerLogsReader is a Reader for the DownloadServerLogs structure.
type DownloadServerLogsReader struct {
	formats strfmt.Registry
	writer  io.Writer
}

// ReadResponse reads a server response into the received o.
func (o *DownloadServerLogsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDownloadServerLogsOK(o.writer)
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDownloadServerLogsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDownloadServerLogsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /dslogmanager/namespaces/{namespace}/servers/{podName}/logs/download returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDownloadServerLogsOK creates a DownloadServerLogsOK with default headers values
func NewDownloadServerLogsOK(writer io.Writer) *DownloadServerLogsOK {
	return &DownloadServerLogsOK{
		Payload: writer,
	}
}

/*DownloadServerLogsOK handles this case with default header values.

  server logs downloaded.
*/
type DownloadServerLogsOK struct {
	Payload io.Writer
}

func (o *DownloadServerLogsOK) Error() string {
	return fmt.Sprintf("[GET /dslogmanager/namespaces/{namespace}/servers/{podName}/logs/download][%d] downloadServerLogsOK  %+v", 200, o.ToJSONString())
}

func (o *DownloadServerLogsOK) ToJSONString() string {
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

func (o *DownloadServerLogsOK) GetPayload() io.Writer {
	return o.Payload
}

func (o *DownloadServerLogsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDownloadServerLogsNotFound creates a DownloadServerLogsNotFound with default headers values
func NewDownloadServerLogsNotFound() *DownloadServerLogsNotFound {
	return &DownloadServerLogsNotFound{}
}

/*DownloadServerLogsNotFound handles this case with default header values.

  Not Found
*/
type DownloadServerLogsNotFound struct {
	Payload *dslogmanagerclientmodels.ResponseError
}

func (o *DownloadServerLogsNotFound) Error() string {
	return fmt.Sprintf("[GET /dslogmanager/namespaces/{namespace}/servers/{podName}/logs/download][%d] downloadServerLogsNotFound  %+v", 404, o.ToJSONString())
}

func (o *DownloadServerLogsNotFound) ToJSONString() string {
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

func (o *DownloadServerLogsNotFound) GetPayload() *dslogmanagerclientmodels.ResponseError {
	return o.Payload
}

func (o *DownloadServerLogsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDownloadServerLogsInternalServerError creates a DownloadServerLogsInternalServerError with default headers values
func NewDownloadServerLogsInternalServerError() *DownloadServerLogsInternalServerError {
	return &DownloadServerLogsInternalServerError{}
}

/*DownloadServerLogsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DownloadServerLogsInternalServerError struct {
	Payload *dslogmanagerclientmodels.ResponseError
}

func (o *DownloadServerLogsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /dslogmanager/namespaces/{namespace}/servers/{podName}/logs/download][%d] downloadServerLogsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DownloadServerLogsInternalServerError) ToJSONString() string {
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

func (o *DownloadServerLogsInternalServerError) GetPayload() *dslogmanagerclientmodels.ResponseError {
	return o.Payload
}

func (o *DownloadServerLogsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
