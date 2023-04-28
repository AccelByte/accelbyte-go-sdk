// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmaking

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
)

// ExportChannelsReader is a Reader for the ExportChannels structure.
type ExportChannelsReader struct {
	formats strfmt.Registry
	writer  io.Writer
}

// ReadResponse reads a server response into the received o.
func (o *ExportChannelsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewExportChannelsOK(o.writer)
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewExportChannelsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewExportChannelsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewExportChannelsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /matchmaking/v1/admin/namespaces/{namespace}/channels/export returns an error %d: %s", response.Code(), string(data))
	}
}

// NewExportChannelsOK creates a ExportChannelsOK with default headers values
func NewExportChannelsOK(writer io.Writer) *ExportChannelsOK {
	return &ExportChannelsOK{
		Payload: writer,
	}
}

/*ExportChannelsOK handles this case with default header values.

  OK
*/
type ExportChannelsOK struct {
	Payload io.Writer
}

func (o *ExportChannelsOK) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/channels/export][%d] exportChannelsOK  %+v", 200, o.ToJSONString())
}

func (o *ExportChannelsOK) ToJSONString() string {
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

func (o *ExportChannelsOK) GetPayload() io.Writer {
	return o.Payload
}

func (o *ExportChannelsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewExportChannelsUnauthorized creates a ExportChannelsUnauthorized with default headers values
func NewExportChannelsUnauthorized() *ExportChannelsUnauthorized {
	return &ExportChannelsUnauthorized{}
}

/*ExportChannelsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type ExportChannelsUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *ExportChannelsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/channels/export][%d] exportChannelsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ExportChannelsUnauthorized) ToJSONString() string {
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

func (o *ExportChannelsUnauthorized) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *ExportChannelsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewExportChannelsForbidden creates a ExportChannelsForbidden with default headers values
func NewExportChannelsForbidden() *ExportChannelsForbidden {
	return &ExportChannelsForbidden{}
}

/*ExportChannelsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20014</td><td>invalid audience</td></tr><tr><td>20015</td><td>insufficient scope</td></tr></table>
*/
type ExportChannelsForbidden struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *ExportChannelsForbidden) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/channels/export][%d] exportChannelsForbidden  %+v", 403, o.ToJSONString())
}

func (o *ExportChannelsForbidden) ToJSONString() string {
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

func (o *ExportChannelsForbidden) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *ExportChannelsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewExportChannelsInternalServerError creates a ExportChannelsInternalServerError with default headers values
func NewExportChannelsInternalServerError() *ExportChannelsInternalServerError {
	return &ExportChannelsInternalServerError{}
}

/*ExportChannelsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type ExportChannelsInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseErrorV1
}

func (o *ExportChannelsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /matchmaking/v1/admin/namespaces/{namespace}/channels/export][%d] exportChannelsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ExportChannelsInternalServerError) ToJSONString() string {
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

func (o *ExportChannelsInternalServerError) GetPayload() *matchmakingclientmodels.ResponseErrorV1 {
	return o.Payload
}

func (o *ExportChannelsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseErrorV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
